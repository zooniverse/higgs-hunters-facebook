$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]

classifyPage.subjectViewer.frameControls.hide()

classifyPage.on classifyPage.CREATE_CLASSIFICATION, (e, subject) ->
  classifyPage.subjectViewer.markingSurface.el.style.opacity = '0'

classifyPage.on classifyPage.LOAD_SUBJECT, (e, subject) ->
  classifyPage.subjectViewer.markingSurface.el.style.opacity = ''
  randomIndex = Math.floor Math.random() * subject.location.standard.length
  classifyPage.subjectViewer.goTo randomIndex
  classifyPage.classification.set 'image_index', randomIndex
  classifyPage.classification.set 'image_src', subject.location.standard[randomIndex]
