fbEnv = require './facebook-env'

# Facebook SDK snippet
`
  (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
`

# App IDs and URLs
fbConfig =
  'dev':
    appId: '1821327884749590'
    url: 'https://apps.facebook.com/1004328769693431/'
  'production':
    appId: '1821327471416298'
    url: 'https://apps.facebook.com/higgs-hunters/'

config = fbConfig[fbEnv]
console.log 'Environment set to', fbEnv, config

# Init
window.fbAsyncInit = ->
  FB.init
    appId: config.appId
    xfbml: true
    version: 'v2.7'
  FB.AppEvents.logEvent 'VISITED_APP'
