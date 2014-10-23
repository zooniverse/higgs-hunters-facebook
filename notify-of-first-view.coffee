$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]
{subjectViewer} = classifyPage

firstViewNotification = $('''
  <div class="first-view-notification">Guess what! You're the first to see this event.</div>
''')
firstViewNotification.hide()

subjectViewer.el.append firstViewNotification

classifyPage.one classifyPage.LOAD_SUBJECT, (e, subject) ->
  classificationCount = subject.classification_count ? 0

  console?.log 'Classification count', classificationCount

  firstViewNotification.toggle classificationCount is 0
