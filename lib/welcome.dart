import 'package:flutter/material.dart';
import 'login.dart';
import 'registration.dart';
import 'helper.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 123, 67, 1.0),
              Color.fromRGBO(245, 50, 111, 1.0),
            ]
        )
    ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [



                  SizedBox( width: 20.0,),
                  Container(
                    height: 280.0,
                    child: Image.asset("images/splash.png"),
                    alignment: Alignment.center,
                  ),

              RoundedButton(
                title: "Register",
                colour: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context,RegistrationScreen.id);

                },
              ),
              RoundedButton(
                title: "Log In",
                colour: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context,LoginScreen.id);
                },
              )

            ],

          ),


        ),


      ),

    );
  }
}