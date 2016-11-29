Classifier = require 'zooniverse-readymade/lib/classifier'
ClassificationSummary = require 'zooniverse-readymade/lib/classification-summary'
fbConfig = require './facebook-config'

ClassificationSummary::template = require './templates/facebook-classification-summary'

ClassificationSummary::elements =
  '.readymade-existing-comments': 'existingCommentsText'
  '.readymade-existing-comments-count': 'existingCommentsCount'
  '.readymade-talk-link': 'talkLink'
  '.readymade-twitter-link': 'twitterLink'
  '.readymade-facebook-link': 'facebookLink'

ClassificationSummary::events =
  'click button[name="readymade-dont-talk"]': ->
    @fireFBClassificationEvent()
    @trigger @DISMISS
  'click button[name="readymade-facebook-share"]': "shareOnNewsFeed"

ClassificationSummary::fireFBClassificationEvent = ->
  currentProject = require 'zooniverse-readymade/current-project'
  currentSubject = currentProject.classifyPages[0].Subject.current.id

  params =
    CONTENT_ID: currentSubject
  FB.AppEvents.logEvent 'CLASSIFIED_SUBJECT', null, params

ClassificationSummary::shareOnNewsFeed = ->
  currentProject = require 'zooniverse-readymade/current-project'
  currentSubject = currentProject.classifyPages[0].Subject.current.location.standard
  
  actionProperties =
    object:
      'og:image': currentSubject
      'og:title': "I'm looking for exotic particles at CERN!"
      'og:description': "Higgs Hunters helps physicists find unknown exotic particles in data from the Large Hadron Collider."
      'og:site_name': 'Higgs Hunters'
      'og:url': fbConfig.url
      'fb:app_id': fbConfig.appId

  FB.ui
    method: 'share_open_graph'
    action_type: 'og.shares'
    action_properties: JSON.stringify actionProperties
