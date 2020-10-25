import 'package:navigation_routing/forgotPassword.dart';

import 'welcome.dart';
import 'package:flutter/material.dart';
import 'helper.dart';
import 'auth_helper.dart';
import 'Homepage.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const String id = "login_screen";



  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState(){
    super.initState();

    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");


  }

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
                height: 200.0,
                child: Image.asset("images/splash.png"),
                alignment: Alignment.center,
              ),
              TextField(
                controller: _emailController,
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your User name/email"),


              ),
              SizedBox(height: 10.0,),
              TextField(
                  controller: _passwordController,
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
              onPressed: () async {

                  if (_emailController.text.isEmpty|| _passwordController.text.isEmpty ) {
                    print("Please enter your email and password");
                    return;
                  }
                  try {
                    final user = await AuthHelper.signInWithEmail(
                    email: _emailController.text,
                    password: _passwordController.text);
                    if(user != null){
                      print("Login Success!");
                  }
                  }
                  catch (e) {
                    print(e);
                  }
            },
              ),
              SizedBox(height: 5,),
              RoundedButton(
                title: "Log In With Google",
                colour: Colors.white,
                onPressed: ()async {
                  try{
                    await AuthHelper.signInWithGoogle();
                  }  catch (e){
                    print (e);
                  }
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