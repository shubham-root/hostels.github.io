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
				scale: Utils.modulate(gamma, [90, -90], [-0.9, 0.9], true)
			print(gamma)
			curve: "spring(450, 110, 0)"

		pass.animate
			options:
				time: 3.76
				curve: Spring(damping: 0.46)
				delay: 1.46
				repeat: 2
			
			
