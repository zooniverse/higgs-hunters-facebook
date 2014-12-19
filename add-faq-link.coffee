project = require 'zooniverse-readymade/current-project'

classifyPage = project.classifyPages[0]

classifyPage.decisionTree.el.insertAdjacentHTML 'beforeEnd', '''
  <p class="faq-link">Need a hint?<br /><a href="http://talk.higgshunters.org/#/boards/BHH0000001/discussions/DHH00000np">See the FAQ!</a></p>
'''
