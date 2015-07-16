ObjC.import('Cocoa');

import _ from 'underscore';
import stardust from './stardust';

var app = function() {
  var ctrlsHeight = 80;
  var minWidth = 400;
  var minHeight = 340;

  ObjC.registerSubclass({
    name: 'AppDelegate',
    methods: {
      'click': {
        types: ['void', ['id']],
        implementation: function(sender) {
          var panel = $.NSOpenPanel.openPanel;
          panel.title = 'Choose an Image';
          panel.allowedFileTypes = $(['jpg', 'png', 'gif']);

          if (panel.runModal == $.NSOKButton) {
            var imagePath = panel.URLs.objectAtIndex(0).path;
            var img = $.NSImage.alloc.initByReferencingFile(imagePath);
            var imgView = $.NSImageView.alloc.initWithFrame(
              $.NSMakeRect(0, mainWindow.height(), img.size.width, img.size.height)
            );

            mainWindow.resize(
              (img.size.width > minWidth) ? img.size.width : minWidth,
              ((img.size.height > minHeight) ? img.size.height : minHeight) + ctrlsHeight
            );

            imgView.setImage(img);
            mainWindow.append(imgView).center();
          }
        }
      }
    }
  });

  var appDelegate = $.AppDelegate.alloc.init;

  var mainWindow = stardust.window({
    title: 'Choose and Display Image',
    rect: [0, 0, 600, 85]
  }).delegate(appDelegate);

  mainWindow.append(stardust.fieldLabel({
    value: 'Image: (jpg, png, or gif)',
    rect: [25, (mainWindow.height() - 40), 200, 24]
  }))
  .append(stardust.textField({
    editable: false,
    rect: [25, (mainWindow.height() - 60), 205, 24]
  }))
  .append(stardust.button({
    title: 'Choose an image...',
    rect: [230, (mainWindow.height() - 62), 150, 25],
    target: appDelegate,
    action: 'click'
  }));

  return {
    appDelegate: appDelegate,
    mainWindow: mainWindow
  }
};

module.exports = app();
