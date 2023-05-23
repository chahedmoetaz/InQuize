
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import '../constants.dart';
import '../enums.dart';


class AuthProvider with ChangeNotifier {

  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;


  Future<Response> login(String email, String password) async {


    final Map<String, String> loginData = {

        'login': email,
        'password': password

    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    return await post(AppUrl.login,
        body: json.encode(loginData),
        headers: {'Content-Type': 'application/json'});


  }
  Future<Response> loginRecover(String email, int password) async {


    final Map<String, dynamic> loginData = {

        'email': email,
        'passwordRecover': password

    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    return await post(AppUrl.loginforgotPassword,
        body: json.encode(loginData),
        headers: {'Content-Type': 'application/json'});


  }
  Future<Response> forgetpassword(String email) async {


    final Map<String, String> forgetData = {

        'email': email,


    };



    return await post(AppUrl.forgotPassword,
        body: json.encode(forgetData),
        headers: {'Content-Type': 'application/json; charset=UTF-8'});


  }

  Future<Response> newRecover(String email,int code, String password) async {

    final Map<String, dynamic> registrationData = {
        'email': email,
        'passwordRecover': code,

        'newPwd': password,
        'newPwdRetype': password
    };



   return await post(AppUrl.newPassword,
       body: json.encode(registrationData),
       headers: {'Content-Type': 'application/json'});
  }
  Future<Response> register(String username,String email, String password) async {

    final Map<String, String> registrationData = {
        'email': email,
        'username': username,

        'password': password
    };

   _registeredInStatus = Status.Registering;
    notifyListeners();

   return await post(AppUrl.register,
       body: json.encode(registrationData),
       headers: {'Content-Type': 'application/json'});
  }
  Future<Response> loginMedia(String media,) async {

    final Map<String, String> registrationData = {
        'socialMedia': media,

    };

   _loggedInStatus = Status.LoggedIn;
    notifyListeners();
print(AppUrl.loginMedia);
print(media);
   return await post(AppUrl.loginMedia,
       body: json.encode(registrationData),
       headers: {'Content-Type': 'application/json'});
  }

  void logout() {
    _loggedInStatus=Status.LoggedOut;
    _registeredInStatus=Status.LoggedOut;
  }


}