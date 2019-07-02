library 'Banzai@develop'

banzai([
  appName: 'test-maven-build',
  timeout: 60,
  tools: [
    jdk: 'jdk 10.0.1'
  ],
  cleanWorkspace: [
    post: true
  ],
  sshCreds: ['jenkins-ssh-cred-id'],
  gitTokenId: 'git-token',
  flowdock: [
    banzaiFlow: [
      credId: 'banzai-flowtoken',
      author: [
        name: 'Banzai',
        avatarUrl: 'https://static.greatbigcanvas.com/images/square/raygun/seafoam-wave,2033571.jpg?max=128',
        email: 'banzaicicd@gmail.com'
      ]
    ] 
  ],
  email: [
    admin: 'banzaicicd@gmail.com',
    addresses: [
      banzai: 'banzaicicd@gmail.com'
    ],
    groups: [
      justMe: ['banzai']
    ]
  ],
  notifications: [
    flowdock: [
      /.*/: [
        'banzaiFlow': ['.*']
      ]
    ],
    email: [
      /.*/: [
        individuals: [
          'simon': [
            'PIPELINE:(FAILURE|SUCCESS)',
            'VULNERABILITY:.*',
            'QUALITY:.*'
          ]
        ]
      ]
    ]
  ],
  build: [
    /.*/: [:]
  ],
  integrationTests: [
    /.*/: [:]
  ],
  publish: [
    /master/: [:],
    /[0-9]\.[0-9]\.[0-9]/: [
      shell: 'publish-tag.sh'
    ]
  ]
  gitOpsTrigger: [
    /master|[0-9]\.[0-9]\.[0-9]/ : [
      jenkinsJob: '/Banzai/GitOps/master',
      stackId: 'dib'
    ]
  ],
  downstreamBuilds: [
    /master/: [
      [
        id: 'test-downstream-build',
        job: '/Banzai/TestDownstreamBuild/master'
      ]
    ]
  ]
])