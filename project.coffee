module.exports =
  id: 'project_id'
  background: 'atlas.jpg'

  title: 'Higgs Hunters'
  summary: 'A catchy phrase summing up the project'
  description: 'This is a brief but slightly more detailed project description.'

  pages: [{
    'Science': [{
      'Introduction': '''
        <h1>All about the project</h1>
        <p>This is where we\'ll go into detail.</p>
        <hr />
        <h2>Lorem ipsum dolor sir amet.</h2>
        <p>Break it into sections, add pictures, whatever.</p>
    '''
    }, {
      'Particle physics': '''
        <p>And this is a page about particle physics.</p>
      '''
    }, {
      'Higgs boson': '''
        <p>And this is a page about the higgs.</p>
      '''
    }, {
      'LHC/ATLAS': '''
        <p>And this is a page about the LHC and ATLAS.</p>
      '''
    }, {
      'How you can help': '''
        <p>And this is a page about how you can help.</p>
      '''
    }]
  }]

  organizations: [{
    image: '//placehold.it/100.png?text=Example'
    name: 'Example Organization'
    description: 'This is an example organization.'
    url: ['https://www.zooniverse.org/', 'https://twitter.com/the_zooniverse', 'https://github.com/zooniverse']
  }]

  scientists: [{
    image: '//placehold.it/100.png?text=Example'
    name: 'Example Scietist'
    location: 'Oxford, U.K.'
    description: 'This is an example scientist.'
    url: 'https://twitter.com/orbitingfrog'
  }]

  developers: [{
    image: '//placehold.it/100.png?text=Example'
    name: 'Example Developer'
    location: 'Chicago, IL'
    description: 'This is an example developer.'
    url: ['http://viewinglens.com/', 'https://github.com/brian-c', 'https://twitter.com/__brian_c__']
  }]

  tasks:
    pickOne:
      type: 'drawing'
      question: 'Pick one'
      choices: [{
        type: 'point'
        label: 'Fork'
        color: 'cyan'
      }, {
        type: 'point'
        label: 'Kink'
        color: 'magenta'
      }, {
        type: 'point'
        label: 'Type 3'
        color: 'yellow'
      }, {
        type: 'point'
        label: 'Other'
        color: 'white'
      }]

  firstTask: 'pickOne'
