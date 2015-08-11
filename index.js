ObjC.import('Cocoa');

import starstuff from 'starstuff';

var app = function() {
  let ctrlsHeight = 100;
  let minWidth = 400;
  let minHeight = 340;

  let logger = function(msg) {
    $.NSLog('%@', msg);
  };

  let larger = function(a, b) {
    return (a > b) ? a : b;
  };

  ObjC.registerSubclass({
    name: 'AppDelegate',
    methods: {
      'click': {
        types: ['void', ['id']],
        implementation: function(sender) {
          panel.open(fileSelected);
        }
      }
    }
  });

  let appDelegate = $.AppDelegate.alloc.init;

  let fileSelected = function(panelUrls) {
    let selectedFilePath = panelUrls[0].path;
    let imgId = 'chosenImage';
    let $img = $mainWindow.find('#' + imgId);

    if ($img) {
      $img.src(selectedFilePath);
    } else {
      $img = starstuff.image({
        id: imgId,
        src: selectedFilePath,
        rect: [0, $mainWindow.height()]
      });

      $mainWindow.append($img);
    }

    $mainWindow.find('#fileField').val(selectedFilePath);

    $mainWindow.size(
      larger($img.width(), minWidth),
      larger($img.height(), minHeight) + ctrlsHeight
    ).center();
  };

  let $mainWindow = starstuff.window({
    title: 'Choose and Display Image',
    rect: [0, 0, 600, 85]
  }).delegate(appDelegate);

  $mainWindow.append(starstuff.fieldLabel({
    id: 'fileFieldLabel',
    value: 'Image: (jpg, png, or gif):',
    rect: [25, ($mainWindow.height() - 40), 200, 24]
  }))
  .append(starstuff.textField({
    id: 'fileField',
    editable: false,
    rect: [25, ($mainWindow.height() - 60), 350, 24]
  }))
  .append(starstuff.button({
    id: 'chooseButton',
    title: 'Choose an image...',
    rect: [375, ($mainWindow.height() - 62), 150, 25],
    target: appDelegate,
    action: 'click'
  }));

  let panel = starstuff.openPanel({
    title: 'Choose an Image',
    allowedTypes: ['jpg', 'png', 'gif']
  });

  return {
    logger: logger,
    appDelegate: appDelegate,
    mainWindow: $mainWindow
  }
};

module.exports = app();
