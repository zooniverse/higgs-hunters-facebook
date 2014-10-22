project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]
{subjectViewer} = classifyPage

subjectViewer.el.append require './loading-spinner'
