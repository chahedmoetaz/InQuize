import 'package:flutter/material.dart';

import 'components/body.dart';

class NewPasswordRecoverScreen extends StatelessWidget {
  static String routeName = "/new_password_recover";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Password Recover"),
      ),
      body: Body(),
    );
  }
}
