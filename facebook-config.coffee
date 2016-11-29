fbEnv = require './facebook-env'

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

module.exports = config
