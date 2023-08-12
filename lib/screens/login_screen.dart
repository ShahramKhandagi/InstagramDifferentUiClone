import 'package:flutter/material.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return _getMainContainer(context);
  }

  Widget _getMainContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0b8793), Color(0xff360033)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              left: 20,
              right: 20,
              bottom: 0,
              top: 70,
              child: Container(
                height: double.infinity,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('images/book.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(30, 8),
                    topRight: Radius.elliptical(30, 8),
                  ),
                  color: backgroundColor,
                ),
                child: getLoginContainerDetails(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getLoginContainerDetails(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'Sign in to Instagram',
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: textFieldColor, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: secondColor),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Email',
              floatingLabelStyle: TextStyle(color: secondColor),
              labelStyle: TextStyle(
                fontFamily: 'GM',
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: textFieldColor, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: secondColor),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                labelText: 'Password',
                floatingLabelStyle: TextStyle(color: secondColor),
                labelStyle: TextStyle(fontFamily: 'GM', color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
