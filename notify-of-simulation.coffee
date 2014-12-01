$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]

SIMULATION_GROUPS = [
  'hZ_dvdv_8GeV_tautau_1mm'
  'hZ_dvdv_8GeV_tautau_10mm'
  'hZ_dvdv_8GeV_tautau_100mm'
  'hZ_dvdv_20GeV_bb_1mm'
  'hZ_dvdv_20GeV_bb_10mm'
  'hZ_dvdv_20GeV_bb_100mm'
  'hZ_dvdv_50GeV_bb_1mm'
  'hZ_dvdv_50GeV_bb_10mm'
  'hZ_dvdv_50GeV_bb_100mm'
]

defaultMessage = classifyPage.summary.el.children('p').first()
simulationMessage = $('''
  <p>
    Thank you. Your classification has been recorded.
    This was simulated data that we show volunteers in order to calibrate the project.
  </p>
''')

classifyPage.on classifyPage.LOAD_SUBJECT, (e, subject) ->
  inSimulationGroup = subject.metadata.image_metadata[0].group in SIMULATION_GROUPS

  appropriateMessage = if inSimulationGroup
    simulationMessage
  else
    defaultMessage

  classifyPage.summary.el.children('p').first().replaceWith appropriateMessage
