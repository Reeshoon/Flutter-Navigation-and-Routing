import 'package:navigation_routing/forgotPassword.dart';

import 'welcome.dart';
import 'package:flutter/material.dart';
import 'helper.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            children:<Widget> [
              Container(
                height: 280.0,
                child: Image.asset("images/splash.png"),
                alignment: Alignment.center,
              ),
              SizedBox(height: 40.0,),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your User name/email"),


              ),
              SizedBox(height: 10.0,),
              TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value)
                  {
                    // Do something with user input
                  },
                  decoration: TextFieldDecoration.copyWith(hintText: " Enter your password")

              ),

              SizedBox(height: 20,),
              RoundedButton(
                title: "Log In",
                colour: Colors.white,
                onPressed: (){

                },
              ),
              SizedBox(height: 20,),
          new GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,PasswordScreen.id);
            },
            child: Align(
              alignment: Alignment.center, // Align however you like (i.e .centerRight, centerLeft)
              child: Text(
                'FORGOT PASSWORD?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),

              ),
            ),

          ),




            ],


          ),
        ),

      ),

    );
  }
}