import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInRecoverScreen extends StatelessWidget {
  static String routeName = "/sign_in_recover";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Sign in Recover"),
      ),
      body: Body(),
    );
  }
}


