module.exports =
  id: 'higgs_hunter'
  background: 'atlas.jpg'

  title: 'Higgs Hunters'
  summary: 'A catchy phrase summing up the project'
  description: 'This is a brief but slightly more detailed project description.'

  pages: [{
    'Science': [
      {'Introduction': require './content/science-intro'}
      {'Particle physics': require './content/particle-physics'}
      {'LHC': require './content/lhc'}
      {'Exotic Decays': require './content/exotic-decays'}
      {'How you can help': require './content/how-you-can-help'}
    ]
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
            {value: 2, label: '2'}, {value: 3, label: '3'}, {value: 4, label: '4'}
            {value: '5-10', label: '5-10'}, {value: '10+', label: '10+'}
          ]
        ]
      }, {
        type: 'point'
        value: 'weird'
        label: 'Something weird'
        color: 'orangered'
      }]

  firstTask: 'pickOne'

  examples: [{
    label: 'What we\'re looking for'
    content: 'Lorem ipsum, this is content.'
    figures: [{
      image: '//placehold.it/128.png'
      label: 'Lorem ipsum dolor sit amet.'
    }, {
      image: '//placehold.it/256.png'
      label: 'Again: lorem ipsum dolor sit amet.'
    }]
  }, {
    label: 'What we\'re <em>not</em> looking for'
    content: 'Lorem ipsum, this is content too.'
    figures: [{
      image: '//placehold.it/128.png'
      label: 'Nope! Lorem ipsum dolor sit amet.'
    }, {
      image: '//placehold.it/256.png'
      label: 'Not again: lorem ipsum dolor sit amet.'
    }]
  }]
