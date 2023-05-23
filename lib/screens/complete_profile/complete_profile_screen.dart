import 'dart:io';

import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Platform.isIOS?Icons.arrow_back_ios_outlined:Icons.arrow_back),onPressed:()=> Navigator.pop(context),),

        centerTitle: true,
        title: Text('Edit Profile',
          style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w700),
        ),
        elevation: 1,
      ),
      body: Body(),
    );
  }
}
