const dummyData = r'''
[
  {
    "name": "App 1",
    "developer": "Developer 1",
    "category": "Juego",
    "rank": 1,
    "cost": 0.99,
    "description": "This is the description for App 1.",
    "avatar": "avatar1.png",
    "image": "image1.png",
    "installed": true,
    "users": [{
    "user": "User 1",
    "comments": "App 1 is a game-changer in the productivity space. Its intuitive interface and powerful features have greatly improved my workflow.",
    "avatar": "avatar1.png"
  },
  {
    "user": "User 2",
    "comments": "I've been using App 2 for learning languages, and it's been an incredible tool. The interactive lessons and pronunciation exercises are top-notch.",
    "avatar": "avatar2.png"
  },
  {
    "user": "User 3",
    "comments": "App 3 revolutionized my fitness journey. The workout plans and progress tracking keep me motivated to achieve my fitness goals.",
    "avatar": "avatar3.png"
  },]
  },
  {
    "name": "App 2",
    "developer": "Developer 2",
    "category": "Finanzas",
    "rank": 2,
    "cost": 1.99,
    "description": "This is the description for App 2.",
    "avatar": "avatar2.png",
    "image": "image2.png",
    "installed": false,
    "users": [
    {
    "user": "User 4",
    "comments": "I can't imagine my life without App 4. Its smart home integration and automation features have made my home smarter and more efficient.",
    "avatar": "avatar4.png"
  },
  {
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "avatar5.png"
  },
    ]
  },
  {
    "name": "App 3",
    "developer": "Developer 3",
    "category": "Entretenimiento",
    "rank": 3,
    "cost": 0.0,
    "description": "This is the description for App 3.",
    "avatar": "avatar3.png",
    "image": "image3.png",
    "installed": true,
    "users": [
    {
    "user": "User 6",
    "comments": "I love using App 6 for meal planning. It has a vast collection of recipes, meal suggestions, and shopping lists that make cooking a breeze.",
    "avatar": "avatar6.png"
  },
  {
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "avatar7.png"
  },
    ]
  },
  {
    "name": "App 4",
    "developer": "Developer 4",
    "category": "Juego",
    "rank": 4,
    "cost": 2.99,
    "description": "This is the description for App 4.",
    "avatar": "avatar4.png",
    "image": "image4.png",
    "installed": true,
    "users": [{
    "user": "User 8",
    "comments": "I've been using App 8 for meditation and mindfulness, and it has made a significant difference in my mental well-being. Highly recommended.",
    "avatar": "avatar8.png"
  },
  {
    "user": "User 9",
    "comments": "App 9 is my go-to weather app. Its accurate forecasts and beautiful UI make checking the weather a delightful experience.",
    "avatar": "avatar9.png"
  },]
  },
  {
    "name": "App 5",
    "developer": "Developer 5",
    "category": "Aplicación",
    "rank": 5,
    "cost": 0.0,
    "description": "This is the description for App 5.",
    "avatar": "avatar5.png",
    "image": "image5.png",
    "installed": false,
    "users": [{
    "user": "User 10",
    "comments": "I've tried several task management apps, but App 10 is by far the best. Its simplicity and powerful features help me stay organized and focused.",
    "avatar": "avatar10.png"
  },
  {
    "user": "User 11",
    "comments": "App 11 is a game-changer for my photography. The editing tools and filters give my photos a professional touch with minimal effort.",
    "avatar": "avatar11.png"
  },]
  },
  {
    "name": "App 6",
    "developer": "Developer 6",
    "category": "Noticias",
    "rank": 3,
    "cost": 4.99,
    "description": "This is the description for App 6.",
    "avatar": "avatar6.png",
    "image": "image6.png",
    "installed": true,
    "users": [{
    "user": "User 12",
    "comments": "I've been using App 12 for tracking my daily habits, and it has helped me build positive routines and break bad habits. It's a game-changer.",
    "avatar": "avatar12.png"
  },
  {
    "user": "User 13",
    "comments": "App 13 is a fantastic travel companion. It provides offline maps, translation tools, and recommendations, making exploring new places a breeze.",
    "avatar": "avatar13.png"
  },]
  },
  {
    "name": "App 7",
    "developer": "Developer 7",
    "category": "Aplicación",
    "rank": 4,
    "cost": 1.99,
    "description": "This is the description for App 7.",
    "avatar": "avatar7.png",
    "image": "image7.png",
    "installed": false,
    "users": [{
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "avatar5.png"
  },
  {
    "user": "User 6",
    "comments": "I love using App 6 for meal planning. It has a vast collection of recipes, meal suggestions, and shopping lists that make cooking a breeze.",
    "avatar": "avatar6.png"
  },
  {
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "avatar7.png"
  },]
  },
  {
    "name": "App 8",
    "developer": "Developer 8",
    "category": "Entretenimiento",
    "rank": 5,
    "cost": 0.0,
    "description": "This is the description for App 8.",
    "avatar": "avatar8.png",
    "image": "image8.png",
    "installed": true,
    "users": [{
    "user": "User 14",
    "comments": "I've been using App 14 for learning to play the guitar, and it's been an incredible learning tool. The interactive lessons and chord library are amazing.",
    "avatar": "avatar14.png"
  },
  {
    "user": "User 15",
    "comments": "App 15 is an excellent news aggregator. It provides personalized news recommendations, and its clean interface makes reading news a pleasant experience.",
    "avatar": "avatar15.png"
  },]
  },
  {
    "name": "App 9",
    "developer": "Developer 9",
    "category": "Juego",
    "rank": 3,
    "cost": 3.99,
    "description": "This is the description for App 9.",
    "avatar": "avatar9.png",
    "image": "image9.png",
    "installed": true,
    "users": [{
    "user": "User 16",
    "comments": "I love using App 16 for tracking my running and cycling activities. Its GPS tracking and detailed statistics help me analyze and improve my performance.",
    "avatar": "avatar16.png"
  },
  {
    "user": "User 17",
    "comments": "App 17 is my go-to app for recipe ideas. It has a vast collection of delicious recipes, and the step-by-step instructions are easy to follow.",
    "avatar": "avatar17.png"
  },]
  },
  {
    "name": "App 10",
    "developer": "Developer 10",
    "category": "Entretenimiento",
    "rank": 1,
    "cost": 0.0,
    "description": "This is the description for App 10.",
    "avatar": "avatar10.png",
    "image": "image10.png",
    "installed": false,
    "users": [{
    "user": "User 18",
    "comments": "I've been using App 18 for learning to code, and it's been a fantastic learning resource. The interactive coding exercises and tutorials are exceptional.",
    "avatar": "avatar18.png"
  },
  {
    "user": "User 19",
    "comments": "App 19 is a game-changer for managing my personal finances. Its budgeting tools and expense tracking features have helped me save money and reach my financial goals.",
    "avatar": "avatar19.png"
  },]
  },
  {
    "name": "App 11",
    "developer": "Developer 11",
    "category": "Finanzas",
    "rank": 1,
    "cost": 5.99,
    "description": "This is the description for App 11.",
    "avatar": "avatar11.png",
    "image": "image11.png",
    "installed": true,
    "users": [{
    "user": "User 17",
    "comments": "App 17 is my go-to app for recipe ideas. It has a vast collection of delicious recipes, and the step-by-step instructions are easy to follow.",
    "avatar": "avatar17.png"
  },
  {
    "user": "User 18",
    "comments": "I've been using App 18 for learning to code, and it's been a fantastic learning resource. The interactive coding exercises and tutorials are exceptional.",
    "avatar": "avatar18.png"
  },
  {
    "user": "User 19",
    "comments": "App 19 is a game-changer for managing my personal finances. Its budgeting tools and expense tracking features have helped me save money and reach my financial goals.",
    "avatar": "avatar19.png"
  },
  {
    "user": "User 20",
    "comments": "I can't recommend App 20 enough for music lovers. Its vast library of songs, personalized playlists, and seamless streaming make it a must-have app.",
    "avatar": "avatar20.png"
  }]
  },
  {
    "name": "App 12",
    "developer": "Developer 12",
    "category": "Entretenimiento",
    "rank": 2,
    "cost": 0.99,
    "description": "This is the description for App 12.",
    "avatar": "avatar12.png",
    "image": "image12.png",
    "installed": true,
    "users": [{
    "user": "User 3",
    "comments": "App 3 revolutionized my fitness journey. The workout plans and progress tracking keep me motivated to achieve my fitness goals.",
    "avatar": "avatar3.png"
  },
  {
    "user": "User 4",
    "comments": "I can't imagine my life without App 4. Its smart home integration and automation features have made my home smarter and more efficient.",
    "avatar": "avatar4.png"
  },
  {
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "avatar5.png"
  },]
  },
  {
    "name": "App 13",
    "developer": "Developer 13",
    "category": "Juego",
    "rank": 3,
    "cost": 1.99,
    "description": "This is the description for App 13.",
    "avatar": "avatar13.png",
    "image": "image13.png",
    "installed": false,
    "users": [{
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "avatar7.png"
  },
  {
    "user": "User 8",
    "comments": "I've been using App 8 for meditation and mindfulness, and it has made a significant difference in my mental well-being. Highly recommended.",
    "avatar": "avatar8.png"
  },
  {
    "user": "User 9",
    "comments": "App 9 is my go-to weather app. Its accurate forecasts and beautiful UI make checking the weather a delightful experience.",
    "avatar": "avatar9.png"
  },]
  },
  {
    "name": "App 14",
    "developer": "Developer 14",
    "category": "Aplicación",
    "rank": 2,
    "cost": 0.0,
    "description": "This is the description for App 14.",
    "avatar": "avatar14.png",
    "image": "image14.png",
    "installed": true,
    "users": [{
    "user": "User 11",
    "comments": "App 11 is a game-changer for my photography. The editing tools and filters give my photos a professional touch with minimal effort.",
    "avatar": "avatar11.png"
  },
  {
    "user": "User 12",
    "comments": "I've been using App 12 for tracking my daily habits, and it has helped me build positive routines and break bad habits. It's a game-changer.",
    "avatar": "avatar12.png"
  },]
  },
  {
    "name": "App 15",
    "developer": "Developer 15",
    "category": "Entretenimiento",
    "rank": 5,
    "cost": 2.99,
    "description": "This is the description for App 15.",
    "avatar": "avatar15.png",
    "image": "image15.png",
    "installed": true,
    "users": [{
    "user": "User 4",
    "comments": "I can't imagine my life without App 4. Its smart home integration and automation features have made my home smarter and more efficient.",
    "avatar": "avatar4.png"
  },
  {
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "avatar5.png"
  },]
  },
  {
    "name": "App 16",
    "developer": "Caricatura",
    "category": "Category 1",
    "rank": 3,
    "cost": 0.0,
    "description": "This is the description for App 16.",
    "avatar": "avatar16.png",
    "image": "image16.png",
    "installed": false,
    "users": [{
    "user": "User 6",
    "comments": "I love using App 6 for meal planning. It has a vast collection of recipes, meal suggestions, and shopping lists that make cooking a breeze.",
    "avatar": "avatar6.png"
  },
  {
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "avatar7.png"
  },]
  },
  {
    "name": "App 17",
    "developer": "Developer 17",
    "category": "Tecnología",
    "rank": 4,
    "cost": 6.99,
    "description": "This is the description for App 17.",
    "avatar": "avatar17.png",
    "image": "image17.png",
    "installed": true,
    "users": [{
    "user": "User 13",
    "comments": "App 13 is a fantastic travel companion. It provides offline maps, translation tools, and recommendations, making exploring new places a breeze.",
    "avatar": "avatar13.png"
  },
  {
    "user": "User 14",
    "comments": "I've been using App 14 for learning to play the guitar, and it's been an incredible learning tool. The interactive lessons and chord library are amazing.",
    "avatar": "avatar14.png"
  },
  {
    "user": "User 15",
    "comments": "App 15 is an excellent news aggregator. It provides personalized news recommendations, and its clean interface makes reading news a pleasant experience.",
    "avatar": "avatar15.png"
  },]
  },
  {
    "name": "App 18",
    "developer": "Developer 18",
    "category": "Entretenimiento",
    "rank": 5,
    "cost": 0.99,
    "description": "This is the description for App 18.",
    "avatar": "avatar18.png",
    "image": "image18.png",
    "installed": true,
    "users": [{
    "user": "User 16",
    "comments": "I love using App 16 for tracking my running and cycling activities. Its GPS tracking and detailed statistics help me analyze and improve my performance.",
    "avatar": "avatar16.png"
  },
  {
    "user": "User 17",
    "comments": "App 17 is my go-to app for recipe ideas. It has a vast collection of delicious recipes, and the step-by-step instructions are easy to follow.",
    "avatar": "avatar17.png"
  },
  {
    "user": "User 18",
    "comments": "I've been using App 18 for learning to code, and it's been a fantastic learning resource. The interactive coding exercises and tutorials are exceptional.",
    "avatar": "avatar18.png"
  },
  {
    "user": "User 19",
    "comments": "App 19 is a game-changer for managing my personal finances. Its budgeting tools and expense tracking features have helped me save money and reach my financial goals.",
    "avatar": "avatar19.png"
  },]
  }
]
''';
