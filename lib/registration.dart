import 'welcome.dart';
import 'package:flutter/material.dart';
import 'helper.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your User name"),


              ),

              SizedBox(height: 10.0,),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your Email"),
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
                title: "Register",
                colour: Colors.white,
                onPressed: (){

                },
              ),
              RoundedButton(
                title: "Back to home",
                colour: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context,WelcomeScreen.id);
                },
              )

            ],

          ),
        ),


      ),

    );
  }
}