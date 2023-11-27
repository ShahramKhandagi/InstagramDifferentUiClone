import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';
import 'package:instagram_different_ui_clone/screens/add_new_content.dart';
import 'package:instagram_different_ui_clone/screens/home_screen.dart';
import 'package:instagram_different_ui_clone/screens/main_screen.dart';
import 'package:instagram_different_ui_clone/screens/notifications_screen.dart';
import 'package:instagram_different_ui_clone/screens/profile_screen.dart';
import 'package:instagram_different_ui_clone/screens/search_screen.dart';
import 'package:instagram_different_ui_clone/screens/switch_account_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer? timer;

    timer = Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SwitchAccountScreen(),
        ),
      );
    });
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeatY,
          image: AssetImage('images/pattern1.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Center(
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'ShahramKhandagi',
                    style: TextStyle(color: thirdColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
