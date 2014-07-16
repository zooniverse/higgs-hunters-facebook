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
      question: ''
      choices: [{
        type: 'point'
        value: 'vertex'
        label: 'Off-center vertex'
        color: 'lime'
        checked: true
        details: [
          type: 'radio'
          question: 'How many branches are there?'
          key: 'how_many'
          choices: [
            {value: 2, label: '2'}, {value: 3, label: '3'}, {value: 4, label: '4'}, {value: 5, label: '5'}
            {value: 6, label: '6'}, {value: 7, label: '7'}, {value: 8, label: '8'}, {value: 9, label: '9'}, {value: '10+', label: '10+'}
          ]
        ]
      }, {
        type: 'point'
        value: 'weird'
        label: 'Something weird'
        color: 'orangered'
      }]

  firstTask: 'pickOne'
