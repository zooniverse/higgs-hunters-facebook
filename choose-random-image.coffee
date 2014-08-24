$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]
{subjectViewer} = classifyPage

subjectViewer.frameControls.hide()

hide = ->
  subjectViewer.markingSurface.el.style.visibility = 'hidden'

show = ->
  setTimeout (subjectViewer.markingSurface.el.style.visibility = ''), 250

classifyPage.on classifyPage.CREATE_CLASSIFICATION, ->
  hide()

  classifyPage.one classifyPage.LOAD_SUBJECT, (e, subject) ->
    randomIndex = Math.floor Math.random() * subject.location.standard.length
    classifyPage.classification.set 'image_index', randomIndex
    classifyPage.classification.set 'image_src', subject.location.standard[randomIndex]

    subjectViewer.el.one 'change-frame', show
    subjectViewer.goTo randomIndex
