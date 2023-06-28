const dummyData = r'''
[
  {
    "name": "App 1",
    "developer": "Developer 1",
    "category": "Juego",
    "rank": 1,
    "cost": 0.99,
    "description": "This is the description for App 1.",
    "avatar": "1.webp",
    "image": "1.webp",
    "installed": true,
    "users": [{
    "user": "User 1",
    "comments": "App 1 is a game-changer in the productivity space. Its intuitive interface and powerful features have greatly improved my workflow.",
    "avatar": "user.webp"
  },
  {
    "user": "User 2",
    "comments": "I've been using App 2 for learning languages, and it's been an incredible tool. The interactive lessons and pronunciation exercises are top-notch.",
    "avatar": "user.webp"
  },
  {
    "user": "User 3",
    "comments": "App 3 revolutionized my fitness journey. The workout plans and progress tracking keep me motivated to achieve my fitness goals.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 2",
    "developer": "Developer 2",
    "category": "Finanzas",
    "rank": 2,
    "cost": 1.99,
    "description": "This is the description for App 2.",
    "avatar": "2.webp",
    "image": "2.webp",
    "installed": false,
    "users": [
    {
    "user": "User 4",
    "comments": "I can't imagine my life without App 4. Its smart home integration and automation features have made my home smarter and more efficient.",
    "avatar": "user.webp"
  },
  {
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "user.webp"
  }
    ]
  },
  {
    "name": "App 3",
    "developer": "Developer 3",
    "category": "Entretenimiento",
    "rank": 3,
    "cost": 0.0,
    "description": "This is the description for App 3.",
    "avatar": "3.webp",
    "image": "3.webp",
    "installed": true,
    "users": [
    {
    "user": "User 6",
    "comments": "I love using App 6 for meal planning. It has a vast collection of recipes, meal suggestions, and shopping lists that make cooking a breeze.",
    "avatar": "user.webp"
  },
  {
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "user.webp"
  }
    ]
  },
  {
    "name": "App 4",
    "developer": "Developer 4",
    "category": "Juego",
    "rank": 4,
    "cost": 2.99,
    "description": "This is the description for App 4.",
    "avatar": "4.webp",
    "image": "2.webp",
    "installed": true,
    "users": [{
    "user": "User 8",
    "comments": "I've been using App 8 for meditation and mindfulness, and it has made a significant difference in my mental well-being. Highly recommended.",
    "avatar": "user.webp"
  },
  {
    "user": "User 9",
    "comments": "App 9 is my go-to weather app. Its accurate forecasts and beautiful UI make checking the weather a delightful experience.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 5",
    "developer": "Developer 5",
    "category": "Aplicación",
    "rank": 5,
    "cost": 0.0,
    "description": "This is the description for App 5.",
    "avatar": "5.webp",
    "image": "2.webp",
    "installed": false,
    "users": [{
    "user": "User 10",
    "comments": "I've tried several task management apps, but App 10 is by far the best. Its simplicity and powerful features help me stay organized and focused.",
    "avatar": "user.webp"
  },
  {
    "user": "User 11",
    "comments": "App 11 is a game-changer for my photography. The editing tools and filters give my photos a professional touch with minimal effort.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 6",
    "developer": "Developer 6",
    "category": "Noticias",
    "rank": 3,
    "cost": 4.99,
    "description": "This is the description for App 6.",
    "avatar": "6.webp",
    "image": "1.webp",
    "installed": true,
    "users": [{
    "user": "User 12",
    "comments": "I've been using App 12 for tracking my daily habits, and it has helped me build positive routines and break bad habits. It's a game-changer.",
    "avatar": "user.webp"
  },
  {
    "user": "User 13",
    "comments": "App 13 is a fantastic travel companion. It provides offline maps, translation tools, and recommendations, making exploring new places a breeze.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 7",
    "developer": "Developer 7",
    "category": "Aplicación",
    "rank": 4,
    "cost": 1.99,
    "description": "This is the description for App 7.",
    "avatar": "7.webp",
    "image": "3.webp",
    "installed": false,
    "users": [{
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "user.webp"
  },
  {
    "user": "User 6",
    "comments": "I love using App 6 for meal planning. It has a vast collection of recipes, meal suggestions, and shopping lists that make cooking a breeze.",
    "avatar": "user.webp"
  },
  {
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 8",
    "developer": "Developer 8",
    "category": "Entretenimiento",
    "rank": 5,
    "cost": 0.0,
    "description": "This is the description for App 8.",
    "avatar": "8.webp",
    "image": "3.webp",
    "installed": true,
    "users": [{
    "user": "User 14",
    "comments": "I've been using App 14 for learning to play the guitar, and it's been an incredible learning tool. The interactive lessons and chord library are amazing.",
    "avatar": "user.webp"
  },
  {
    "user": "User 15",
    "comments": "App 15 is an excellent news aggregator. It provides personalized news recommendations, and its clean interface makes reading news a pleasant experience.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 9",
    "developer": "Developer 9",
    "category": "Juego",
    "rank": 3,
    "cost": 3.99,
    "description": "This is the description for App 9.",
    "avatar": "9.webp",
    "image": "2.webp",
    "installed": true,
    "users": [{
    "user": "User 16",
    "comments": "I love using App 16 for tracking my running and cycling activities. Its GPS tracking and detailed statistics help me analyze and improve my performance.",
    "avatar": "user.webp"
  },
  {
    "user": "User 17",
    "comments": "App 17 is my go-to app for recipe ideas. It has a vast collection of delicious recipes, and the step-by-step instructions are easy to follow.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 10",
    "developer": "Developer 10",
    "category": "Entretenimiento",
    "rank": 1,
    "cost": 0.0,
    "description": "This is the description for App 10.",
    "avatar": "10.webp",
    "image": "1.webp",
    "installed": false,
    "users": [{
    "user": "User 18",
    "comments": "I've been using App 18 for learning to code, and it's been a fantastic learning resource. The interactive coding exercises and tutorials are exceptional.",
    "avatar": "user.webp"
  },
  {
    "user": "User 19",
    "comments": "App 19 is a game-changer for managing my personal finances. Its budgeting tools and expense tracking features have helped me save money and reach my financial goals.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 11",
    "developer": "Developer 11",
    "category": "Finanzas",
    "rank": 1,
    "cost": 5.99,
    "description": "This is the description for App 11.",
    "avatar": "11.webp",
    "image": "2.webp",
    "installed": true,
    "users": [{
    "user": "User 17",
    "comments": "App 17 is my go-to app for recipe ideas. It has a vast collection of delicious recipes, and the step-by-step instructions are easy to follow.",
    "avatar": "user.webp.webp"
  },
  {
    "user": "User 18",
    "comments": "I've been using App 18 for learning to code, and it's been a fantastic learning resource. The interactive coding exercises and tutorials are exceptional.",
    "avatar": "user.webp.webp"
  },
  {
    "user": "User 19",
    "comments": "App 19 is a game-changer for managing my personal finances. Its budgeting tools and expense tracking features have helped me save money and reach my financial goals.",
    "avatar": "user.webp.webp"
  },
  {
    "user": "User 20",
    "comments": "I can't recommend App 20 enough for music lovers. Its vast library of songs, personalized playlists, and seamless streaming make it a must-have app.",
    "avatar": "user.webp.webp"
  }]
  },
  {
    "name": "App 12",
    "developer": "Developer 12",
    "category": "Entretenimiento",
    "rank": 2,
    "cost": 0.99,
    "description": "This is the description for App 12.",
    "avatar": "12.webp",
    "image": "3.webp",
    "installed": true,
    "users": [{
    "user": "User 3",
    "comments": "App 3 revolutionized my fitness journey. The workout plans and progress tracking keep me motivated to achieve my fitness goals.",
    "avatar": "user.webp"
  },
  {
    "user": "User 4",
    "comments": "I can't imagine my life without App 4. Its smart home integration and automation features have made my home smarter and more efficient.",
    "avatar": "user.webp"
  },
  {
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 13",
    "developer": "Developer 13",
    "category": "Juego",
    "rank": 3,
    "cost": 1.99,
    "description": "This is the description for App 13.",
    "avatar": "13.webp",
    "image": "1.webp",
    "installed": false,
    "users": [{
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "user.webp"
  },
  {
    "user": "User 8",
    "comments": "I've been using App 8 for meditation and mindfulness, and it has made a significant difference in my mental well-being. Highly recommended.",
    "avatar": "user.webp"
  },
  {
    "user": "User 9",
    "comments": "App 9 is my go-to weather app. Its accurate forecasts and beautiful UI make checking the weather a delightful experience.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 14",
    "developer": "Developer 14",
    "category": "Aplicación",
    "rank": 2,
    "cost": 0.0,
    "description": "This is the description for App 14.",
    "avatar": "14.webp",
    "image": "2.webp",
    "installed": true,
    "users": [{
    "user": "User 11",
    "comments": "App 11 is a game-changer for my photography. The editing tools and filters give my photos a professional touch with minimal effort.",
    "avatar": "user.webp"
  },
  {
    "user": "User 12",
    "comments": "I've been using App 12 for tracking my daily habits, and it has helped me build positive routines and break bad habits. It's a game-changer.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 15",
    "developer": "Developer 15",
    "category": "Entretenimiento",
    "rank": 5,
    "cost": 2.99,
    "description": "This is the description for App 15.",
    "avatar": "15.webp",
    "image": "1.webp",
    "installed": true,
    "users": [{
    "user": "User 4",
    "comments": "I can't imagine my life without App 4. Its smart home integration and automation features have made my home smarter and more efficient.",
    "avatar": "user.webp"
  },
  {
    "user": "User 5",
    "comments": "App 5 is a lifesaver for managing my finances. Its budgeting tools and expense tracking capabilities have helped me gain control of my money.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 16",
    "developer": "Caricatura",
    "category": "Category 1",
    "rank": 3,
    "cost": 0.0,
    "description": "This is the description for App 16.",
    "avatar": "16.webp",
    "image": "3.webp",
    "installed": false,
    "users": [{
    "user": "User 6",
    "comments": "I love using App 6 for meal planning. It has a vast collection of recipes, meal suggestions, and shopping lists that make cooking a breeze.",
    "avatar": "user.webp"
  },
  {
    "user": "User 7",
    "comments": "App 7 is a fantastic social networking app. It keeps me connected with my friends and family, and the privacy settings are top-notch.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 17",
    "developer": "Developer 17",
    "category": "Tecnología",
    "rank": 4,
    "cost": 6.99,
    "description": "This is the description for App 17.",
    "avatar": "17.webp",
    "image": "2.webp",
    "installed": true,
    "users": [{
    "user": "User 13",
    "comments": "App 13 is a fantastic travel companion. It provides offline maps, translation tools, and recommendations, making exploring new places a breeze.",
    "avatar": "user.webp"
  },
  {
    "user": "User 14",
    "comments": "I've been using App 14 for learning to play the guitar, and it's been an incredible learning tool. The interactive lessons and chord library are amazing.",
    "avatar": "user.webp"
  },
  {
    "user": "User 15",
    "comments": "App 15 is an excellent news aggregator. It provides personalized news recommendations, and its clean interface makes reading news a pleasant experience.",
    "avatar": "user.webp"
  }]
  },
  {
    "name": "App 18",
    "developer": "Developer 18",
    "category": "Entretenimiento",
    "rank": 5,
    "cost": 0.99,
    "description": "This is the description for App 18.",
    "avatar": "18.webp",
    "image": "1.webp",
    "installed": true,
    "users": [{
    "user": "User 16",
    "comments": "I love using App 16 for tracking my running and cycling activities. Its GPS tracking and detailed statistics help me analyze and improve my performance.",
    "avatar": "user.webp"
  },
  {
    "user": "User 17",
    "comments": "App 17 is my go-to app for recipe ideas. It has a vast collection of delicious recipes, and the step-by-step instructions are easy to follow.",
    "avatar": "user.webp"
  },
  {
    "user": "User 18",
    "comments": "I've been using App 18 for learning to code, and it's been a fantastic learning resource. The interactive coding exercises and tutorials are exceptional.",
    "avatar": "user.webp"
  },
  {
    "user": "User 19",
    "comments": "App 19 is a game-changer for managing my personal finances. Its budgeting tools and expense tracking features have helped me save money and reach my financial goals.",
    "avatar": "user.webp"
  }]
  }
]
''';
