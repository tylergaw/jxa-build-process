ObjC.import('Cocoa');

import stardust from './stardust';

var app = function() {
  var ctrlsHeight = 100;
  var minWidth = 400;
  var minHeight = 340;

  var logger = function(msg) {
    $.NSLog('%@', msg);
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

  var fileSelected = function(panelUrls) {
    let selectedFilePath = panelUrls[0].path;
    let imgId = 'chosenImage';
    let $img = $mainWindow.find('#' + imgId);

    if ($img) {
      $img.src(selectedFilePath);
    } else {
      $img = stardust.image({
        id: imgId,
        src: selectedFilePath,
        rect: [0, $mainWindow.height()]
      });

      $mainWindow.append($img);
    }

    $mainWindow.find('#fileField').val(selectedFilePath);

    $mainWindow.size(
      ($img.width() > minWidth) ? $img.width() : minWidth,
      (($img.height() > minHeight) ? $img.height() : minHeight) + ctrlsHeight
    ).center();
  };

  var appDelegate = $.AppDelegate.alloc.init;

  var $mainWindow = stardust.window({
    title: 'Choose and Display Image',
    rect: [0, 0, 600, 85]
  }).delegate(appDelegate);

  $mainWindow.append(stardust.fieldLabel({
    id: 'fileFieldLabel',
    value: 'Image: (jpg, png, or gif):',
    rect: [25, ($mainWindow.height() - 40), 200, 24]
  }))
  .append(stardust.textField({
    id: 'fileField',
    editable: false,
    rect: [25, ($mainWindow.height() - 60), 350, 24]
  }))
  .append(stardust.button({
    id: 'chooseButton',
    title: 'Choose an image...',
    rect: [375, ($mainWindow.height() - 62), 150, 25],
    target: appDelegate,
    action: 'click'
  }));

  var panel = stardust.openPanel({
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
