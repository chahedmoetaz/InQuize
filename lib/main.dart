import 'package:flutter/material.dart';
import 'package:inquize/routes.dart';
import 'package:inquize/screens/profile/profile_screen.dart';
import 'package:inquize/screens/splash/splash_screen.dart';
import 'package:inquize/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InQuize',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
