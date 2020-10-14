import 'welcome.dart';
import 'package:flutter/material.dart';
import 'helper.dart';

class PasswordScreen extends StatefulWidget {
  static const String id = 'password_screen';

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}
class _PasswordScreenState extends State<PasswordScreen> {
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
              Align(
                alignment: Alignment.center, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  'FORGOT YOUR PASSWORD?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
              SizedBox(height: 40,),
              Align(
                alignment: Alignment.center, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  'Confirm your email and we will send the instructions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),

                ),
              ),

              SizedBox(height: 40.0,),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your email address"),


              ),
              SizedBox(height: 10.0,),
              RoundedButton(
                title: "Reset Password",
                colour: Colors.white,
                onPressed: (){

                },
              ),
              SizedBox(height: 20,),







            ],


          ),
        ),

      ),

    );
  }
}