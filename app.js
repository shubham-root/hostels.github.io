var module;

module = require("OrientationEvents");

module.OrientationEvents();

module.smoothOrientation = .35;

Utils.interval(.1, function() {
  var gamma;
  if (module.orientation != null) {
    gamma = module.orientation.gamma;
    return pass.animate({
      properties: {
        scale: Utils.modulate(gamma, [0, -90], [0.05, 0.9], true)
      }
    }, print(gamma), {
      curve: Spring
    });
  }
});
