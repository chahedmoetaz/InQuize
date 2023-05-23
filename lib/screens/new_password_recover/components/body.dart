import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/size_config.dart';

import 'new_password_recover_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Text("New Password Recover", style: headingStyle),
                Text(
                  "Edit your details",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.019),
                SignUpForm(),
               SizedBox(height: SizeConfig.screenHeight * 0.018),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
