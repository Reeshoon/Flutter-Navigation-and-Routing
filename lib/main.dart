import 'login.dart';
import 'registration.dart';
import 'welcome.dart';
import 'package:flutter/material.dart';
import 'helper.dart';
import 'forgotPassword.dart';

void main() {
  runApp(new Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        PasswordScreen.id: (context) => PasswordScreen(),
      },



    );
  }
}