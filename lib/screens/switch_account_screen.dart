import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';
import 'package:instagram_different_ui_clone/screens/home_screen.dart';
import 'package:instagram_different_ui_clone/screens/main_screen.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage('images/switch_account_background.png'),
                  //     ),
                  //   ),
                  // ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 5.0, sigmaX: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5),
                                Color.fromRGBO(255, 255, 255, 0.2)
                              ]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        height: 312,
                        width: 300,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: AssetImage('images/mypro.jpeg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'shahramkhandagi',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 129,
                              height: 46,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              'Switch Account',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, top: 90),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ',
                    style: TextStyle(
                        fontFamily: 'GB',
                        color: Colors.grey[700],
                        fontSize: 16),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        fontFamily: 'GB', color: Colors.white, fontSize: 16),
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
