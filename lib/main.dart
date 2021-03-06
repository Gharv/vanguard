import 'package:flutter/material.dart';

import './pages/profile_page.dart';
import './pages/user_profile_page.dart';
// import './pages/upload_page.dart';

// import './pages/landing_page.dart';
// import './pages/quiz_page.dart';
// import './pages/score_page.dart';
// import './pages/highscoreboard.dart';

import 'package:flutter/services.dart';

void main(){
  
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      
        runApp(new MaterialApp(
          debugShowCheckedModeBanner: false,
            // home: new ScorePage(11)
            // home: new profile_page(),
            home: new user_profile_page(),
            // home: new HomeScreen(),
            // debugShowCheckedModeBanner: false
            // home: new QuizPage()
            // home: HighScoreBoard()
        ));
    });


}
