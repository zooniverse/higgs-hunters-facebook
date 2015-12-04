[apiHost, apiProxyPath] = if window.location.hostname is 'www.higgshunters.org'
  ['http://www.higgshunters.org', '/_ouroboros_api/proxy']
else
  [null, null]

module.exports =
  id: 'higgs_hunter'
  apiHost: apiHost
  apiProxyPath: apiProxyPath
  background: 'atlas.jpg'

  title: 'Higgs Hunters'
  summary: 'Uncover the building blocks of the universe'
  description: 'Help search for unknown exotic particles in the LHC data.'

  pages: [{
    key: 'science'
    title: 'Science'
    content: [{
      key: 'introduction'
      title: 'Introduction'
      content: require './content/science-intro'
    }, {
      key: 'particle-physics'
      title: 'Particle physics'
      content: require './content/particle-physics'
    }, {
      key: 'lhc'
      title: 'LHC'
      content: require './content/lhc'
    }, {
      key: 'exotic-decays'
      title: 'Exotic Decays'
      content: require './content/exotic-decays'
    }, {
      key: 'how-you-can-help'
      title: 'How you can help'
      content: require './content/how-you-can-help'
    }]
  }]

  externalLinks:
    Talk: 'http://talk.higgshunters.org/'
    Blog: 'http://blog.higgshunters.org/'
    '<i class="fa fa-twitter fa-lg"></i>': 'https://twitter.com/higgshunters'
    '<i class="fa fa-facebook-square fa-lg"></i>': 'https://www.facebook.com/pages/Higgs-Hunters/1436737436604742'
    '<i class="fa fa-google-plus fa-lg"></i>': 'https://plus.google.com/103232532872685952674/posts'


  organizations: [{
    name: 'ATLAS'
    url: ['http://www.atlas.ch/', 'https://www.facebook.com/ATLASexperiment', 'https://twitter.com/ATLASexperiment']
    description: '''
      ATLAS is a particle physics experiment at the Large Hadron Collider at CERN that is searching for new discoveries in the head-on collisions of protons of extraordinarily high energy.
      ATLAS will learn about the basic forces that have shaped our Universe since the beginning of time and that will determine its fate.
      Among the possible unknowns are extra dimensions of space, unification of fundamental forces, and evidence for dark matter candidates in the Universe.
      Following the discovery of the Higgs boson, further data will allow in-depth investigation of the boson's properties and thereby of the origin of mass.
    '''
  }, {
    name: 'University of Oxford'
    url: ['http://www.ox.ac.uk/', 'https://www.facebook.com/the.university.of.oxford', 'https://twitter.com/UniofOxford']
    description: '''
      Oxford has been leading the world in physical sciences for more than 700 years.
      The laws of motion of falling bodies were first worked out by the “Oxford Calculators” in the 14th century.
      Today, the physics department at the University of Oxford builds, operates and analyses results from high-tech components of telescopes, particle physics detectors and satellites.
      In the images you can see the cylinders of the semiconductor tracker of the ATLAS detector.
      These precision detectors were assembled in Oxford before shipping to CERN.
      They continue to be operated by Oxford graduate students based at CERN.
    '''
  }, {
    name: 'New York University'
    url: ['http://www.nyu.edu/', 'https://www.facebook.com/NYU', 'https://twitter.com/nyuniversity']
    description: '''
      NYU is a university in and of the city and in and of the world.
      Based in the heart of Greenwich Village with facilities located throughout Manhattan and Brooklyn, the traditional boundaries of the classroom are limitless,
      providing students and faculty with the unique opportunity to learn, teach, and grow in the world’s most dynamic city.
    '''
  }, {
    name: 'Zooniverse'
    url: ['https://www.zooniverse.org/', 'https://www.facebook.com/therealzooniverse', 'https://twitter.com/the_zooniverse', 'https://plus.google.com/+ZooniverseOrgReal', 'https://github.com/zooniverse']
    description: '''
      The Zooniverse is home to the internet’s largest, most popular and most successful citizen science projects.
      The Zooniverse and the suite of projects it contains is produced, maintained and developed by the Citizen Science Alliance.
      The member institutions of the CSA work with many academic and other partners around the world to produce projects that use the efforts and ability of volunteers to help scientists and researchers.
    '''
  }]

  scientists: [{
    name: 'Alan Barr'
    url: ['https://www2.physics.ox.ac.uk/contacts/people/barra']
    description: 'Alan Barr is a professor of particle physics at the University of Oxford, and a tutor at Merton College, Oxford. His research group in Oxford is now performing some of the world’s most sensitive searches for new invisible particles at the LHC. They are looking forward to the second run of the LHC, due to start in spring 2015. Alan has recently been awarded a public engagement fellowship by the Science and Technology Facilities Council in connection with the HiggsHunters.org project.'
  }, {
    name: 'Andy Haas'
    url: ['http://physics.as.nyu.edu/object/AndyHaas.html']
    description: 'Dr. Andy Haas is an assistant professor of Physics at New York University. He’s worked on the ATLAS experiment since 2004, focusing on searches for new particles involving the Higgs boson and Supersymmetry. He currently leads the ATLAS groups searching for new long-lived particles in Supersymmetric models as well as searches for new Higgs bosons in NMSSM models.'
  }, {
    name: 'Ming-Yi Jeffrey Mei'
    description: 'Jeffrey Mei is an undergraduate student from New Zealand and is currently completing his B.Sc in Physics at New York University Abu Dhabi. He has done research in astrophysics, particle physics and geophysics and is trying to decide on a career pathway. He is interested in the role of crowd-sourcing programs like Zooniverse in dealing with Big Data in the future.'
  }, {
    name: 'Peter Watkins'
    url: ['http://www.birmingham.ac.uk/staff/profiles/physics/watkins-peter.aspx']
    description: 'Peter Watkins is a professor of particle physics at the University of Birmingham. He has worked on many experiments at CERN including the UA1 experiment, which together with UA2, discovered the W and Z bosons. His book ‘Story of the W and Z’ aims at sharing the excitement of this discovery with a general audience. He worked on the OPAL experiment at the large electron positron collider LEP, where many precise measurements of these bosons were made, and has been working on the ATLAS experiment at the LHC for over a decade.  He has worked on the visualisation of particle collisions in many of these experiments and led the Birmingham Particle Physics group for ten years. He is the UK representative on the International Particle Physics Outreach group, has initiated many different Outreach activities and gives many public talks on the LHC.'
  }, {
    name: 'Ryan MacDonald'
    url: ['http://www2.physics.ox.ac.uk/contacts/people/univ3329']
    description: 'Ryan MacDonald is a Physics student at Oxford University, with an intense passion and curiosity about the universe. When not hunting for exotic particles at the LHC, he can be found investigating anomalies in the clouds of Venus or searching for Earth-like planets around other stars. He is also known for volunteering to go on a one-way mission to Mars - in order to advance our scientific knowledge of the planet - which certainly requires dedication!'
  }]

  developers: [{
    name: 'Adam McMaster'
    title: 'Infrastructure Engineer'
    url: 'https://twitter.com/astopy'
    description: 'Adam is responsible for managing the Zooniverse’s web hosting infrastructure. He has a computer science degree and has worked in web hosting and development for many years. He’s also working on a degree in astronomy with the OU.'
  }, {
    name: 'Brian Carstensen'
    title: 'UX Developer'
    url: ['https://github.com/brian-c', 'https://twitter.com/__brian_c__']
    description: 'Brian Carstensen recently moved from Chicago to Oxford. Brian has a degree in graphic design from Columbia College in Chicago, and worked in that field for a number of years before finding a niche in web development.'
  }, {
    name: 'Campbell Allen'
    title: 'Developer'
    description: 'Web developer for the Zooniverse, enjoys building things on the internet while listening to funky tunes.'
  }, {
    name: 'Chris Lintott'
    title: 'Zooniverse PI'
    url: 'https://twitter.com/chrislintott'
    description: 'Astronomer and founder of both Galaxy Zoo and the Zooniverse that grew from it, Chris is interested in how galaxies form and evolve, how citizen science can change the world, and whether the Chicago Fire can get their act together.'
  }, {
    name: 'Robert Simpson'
    title: 'Researcher and Developer'
    url: 'https://twitter.com/orbitingfrog'
    description: 'Robert is a researcher and web developer working in Oxford. He has a PhD is in astrophysics from Cardiff and has been hacking astronomy since 2004. He is the Communications Lead for the Zooniverse and is also PI of the Milky Way Project.'
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

  examples: require './field-guide'

  tutorialSteps: require './tutorial-steps'
