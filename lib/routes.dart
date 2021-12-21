import 'package:flutter/widgets.dart';
import 'package:inquize/screens/details_program/details_program_screen.dart';
import 'package:inquize/screens/news/news_screen.dart';
import 'package:inquize/screens/complete_profile/complete_profile_screen.dart';
import 'package:inquize/screens/forgot_password/forgot_password_screen.dart';
import 'package:inquize/screens/home/home_screen.dart';
import 'package:inquize/screens/login_success/login_success_screen.dart';

import 'package:inquize/screens/profile/profile_screen.dart';
import 'package:inquize/screens/sign_in/sign_in_screen.dart';
import 'package:inquize/screens/splash/splash_screen.dart';

import 'screens/details_media/details_media_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),

  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsProgramScreen.routeName: (context) => DetailsProgramScreen(),
  DetailsMediaScreen.routeName: (context) => DetailsMediaScreen(),
  NewsScreen.routeName: (context) => NewsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
