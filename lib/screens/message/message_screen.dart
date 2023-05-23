import 'dart:io';

import 'package:flutter/material.dart';

import 'components/body.dart';

class MessageScreen extends StatelessWidget {
  static String routeName = "/message";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Platform.isIOS?Icons.arrow_back_ios_outlined:Icons.arrow_back),onPressed:()=>  Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/home')),),
        centerTitle: true,
        title: Text(
          'Inbox',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
    );
  }
}
