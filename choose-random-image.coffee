$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]
{subjectViewer} = classifyPage

subjectViewer.frameControls.hide()

hide = ->
  subjectViewer.markingSurface.el.style.visibility = 'hidden'

show = ->
  setTimeout (-> subjectViewer.markingSurface.el.style.visibility = ''), 250

classifyPage.on classifyPage.CREATE_CLASSIFICATION, ->
  hide()

  classifyPage.one classifyPage.LOAD_SUBJECT, (e, subject) ->
    # Subject order is SLICE, NORMAL, ZOOM.
    # SLICE should only show up 15% of the time.
    # This is pretty inelegant.
    random = Math.random()
    weightedRandomIndex = if random < 0.15
      0
    else if random < (1 - 0.15) / 2
      1
    else
      2

    classifyPage.classification.set 'image_index', weightedRandomIndex
    classifyPage.classification.set 'image_src', subject.location.standard[weightedRandomIndex]

    subjectViewer.el.one 'change-frame', show
    subjectViewer.goTo weightedRandomIndex
