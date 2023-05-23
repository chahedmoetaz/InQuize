import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'sign_in_recover_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Sign in Recover",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and code",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.09),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.010),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
