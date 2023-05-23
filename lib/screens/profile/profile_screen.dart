import 'package:flutter/material.dart';
import 'dart:io';
import '../../size_config.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
     leading: IconButton(icon: Icon(Platform.isIOS?Icons.arrow_back_ios_outlined:Icons.arrow_back),onPressed:()=> Navigator.pop(context),),
centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w700),
        ),
        elevation: 1,
      ),
      body: Body(),

    );
  }
}
