$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]

classifyPage.subjectViewer.frameControls.hide()

hide = ->
  classifyPage.subjectViewer.markingSurface.el.style.opacity = 0

show = ->
  classifyPage.subjectViewer.markingSurface.el.style.opacity = ''

classifyPage.on classifyPage.CREATE_CLASSIFICATION, hide

classifyPage.on classifyPage.LOAD_SUBJECT, (e, subject) ->
  randomIndex = Math.floor Math.random() * subject.location.standard.length
  classifyPage.subjectViewer.goTo randomIndex
  classifyPage.classification.set 'image_index', randomIndex
  classifyPage.classification.set 'image_src', subject.location.standard[randomIndex]

  # No idea why the image doesn't change immediately.
  setTimeout show, 500
