import 'package:flutter/material.dart';
import 'package:reading_monitor2/HomePage.dart';
import 'package:reading_monitor2/RegistrationPage.dart';
import 'package:reading_monitor2/TransitionScreen.dart';
import 'package:reading_monitor2/login_page.dart';

void main() async {
  runApp( MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context)=> const LoginPage(),
      'Transition' : (context) => const Transition(),
      'HomePage' : (context) => const HomePage(),
      'Registration' : (context) => const Registration()
    },
  )
  );

}
