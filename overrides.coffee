require './add-analytics'
require './choose-random-image'
require './add-loading-spinner'

project = require 'zooniverse-readymade/current-project'
FEEDBACK_LINK = 'https://docs.google.com/forms/d/1iNUSyj5htgsBJ835tqlMO9EMfRp-g_SMH_F5BWtFVfo/viewform'
project.header.addNavLink FEEDBACK_LINK, 'Feedback'
