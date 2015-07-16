var stardust = {};

stardust.setOpts = function(defaults = {}, options = {}) {
  return Object.assign({}, defaults, options);
};

// This is a convenience method for $.NSMakeRect. While it's not that much easier
// to type, it does allow for using the spread operator, which can't currently
// by used directly with NSMakeRect.
//
// ex:
//   var xywh = [20, 20, 200, 20];
//   startdust.makeRect(...xywh);
stardust.makeRect = function(x, y, w, h) {
  return $.NSMakeRect(x, y, w, h);
};

// I want to be able to do this to add subviews
stardust.append = function() {

};

stardust.window = function(settings) {
  var opts = stardust.setOpts({
    title: 'My Application',
    rect: [0, 0, 200, 200]
  }, settings);

  var styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask |
    $.NSResizableWindowMask | $.NSMiniaturizableWindowMask;

  var obj = {
    append(el) {
      this.el.contentView.addSubview(el);
      return this;
    },

    title(t = null) {
      if (t) {
        this.el.title = t;
        return this;
      } else {
        return this.el.title;
      }
    },

    delegate(d = null) {
      if (d) {
        this.el.delegate = d;
        return this;
      } else {
        return this.el.delegate;
      }
    },

    center() {
      this.el.center;
    },

    rect: [0, 0, 400, 200],

    pos(p = null) {
      if (p) {
        this.rect[0] = p.x;
        this.rect[1] = p.y;
      } else {
        return {
          x: this.rect[0],
          y: this.rect[1]
        };
      }
    },

    width(w = null) {
      if (w) {
        this.rect[2] = w;
        return this;
      } else {
        return this.rect[2];
      }
    },

    height(h = null) {
      if (h) {
        this.rect[3] = h;
        return this;
      } else {
        return this.rect[3];
      }
    },

    resize(w, h) {
      this.width(w);
      this.height(h);
      this.el.setFrameDisplay(
        stardust.makeRect(...this.rect),
        true
      );
      return this;
    }
  };

  obj.pos({
    x: opts.rect[0],
    y: opts.rect[1]
  });

  obj.width(opts.rect[2]);
  obj.height(opts.rect[3]);

  obj.el = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
    stardust.makeRect(...obj.rect),
    styleMask,
    $.NSBackingStoreBuffered,
    false
  );

  obj.center();
  obj.el.makeKeyAndOrderFront(obj.el);

  obj.title(opts.title);

  return obj;
};

stardust.button = function(settings) {
  var opts = stardust.setOpts({
    title: 'Button',
    rect: [25, 25, 150, 24],
    target: null,
    action: null
  }, settings);

  var button = $.NSButton.alloc.initWithFrame(stardust.makeRect(...opts.rect));

  button.title = opts.title;
  button.bezelStyle = $.NSRoundedBezelStyle;
  button.buttonType = $.NSMomentaryLightButton;

  if (opts.target) {
    button.target = opts.target;
  }

  if (opts.action) {
    button.action = opts.action;
  }

  return button;
};

stardust.textField = function(settings) {
  var opts = stardust.setOpts({
    editable: true,
    rect: [25, 25, 200, 24]
  }, settings);

  var field = $.NSTextField.alloc.initWithFrame(stardust.makeRect(...opts.rect));

  field.editable = opts.editable;
  return field;
};

stardust.fieldLabel = function(settings) {
  var opts = stardust.setOpts({
    value: 'Field label',
    rect: [25, 25, 200, 24]
  }, settings);

  var label = $.NSTextField.alloc.initWithFrame(stardust.makeRect(...opts.rect));

  label.stringValue = opts.value;
  label.drawsBackground = false;
  label.editable = false;
  label.bezeled = false;
  label.selectable = true;
  return label;
};

export default stardust;
