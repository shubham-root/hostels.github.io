# Require module
module = require "OrientationEvents"

# Setup OrientationEvents
module.OrientationEvents()

# Sets smoothing for all smooth[Variable]
module.smoothOrientation = .35

Utils.interval .1, ->

	if module.orientation? # To make sure we're actually receiving orientation-values

		gamma = module.orientation.gamma

		pass.animate
			properties:
				scale: Utils.modulate(gamma, [0, -180], [0.1, 0.9], true)
			curve: "spring(450, 110, 0)"
			
			
