import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inquize/helper/userdata.dart';
import 'package:inquize/models/user.dart';
import 'package:http/http.dart';

import '../constants.dart';
class UserData {



  Future<User> fetchUser() async {
    User user=await UserPreferences().getUser();

    final response = await get(
      Uri.parse(AppUrl.getUser),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'InQuize-AUTH-TOKEN': user.token,
      },
    );



    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load user');
    }
  }


  Future<Response> updateUser(String tel,String firstname,String lastname,String address) async {
    User user=await UserPreferences().getUser();


    var response = await post(
      Uri.parse(AppUrl.updateUser),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'InQuize-AUTH-TOKEN': user.token,
      },
      body: jsonEncode(<String, dynamic>{
        'tel': tel,
        'firstname': firstname,
        'lastname': lastname,
        'address': address,
      }),
    );


    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return response;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to update user.');
    }
  }
}