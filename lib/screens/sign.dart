import 'package:flutter/material.dart';
import 'package:inquize/components/default_button.dart';

import '../size_config.dart';

class SignScreen extends StatelessWidget {
  static String routeName = "/sign";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/logo.png',height: getProportionateScreenWidth(100),),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.0),
              child: DefaultButton(
                text: "Sign In",
                press: (){
                  Navigator.pushNamed(context, '/sign_in');
                },
              ),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.0),
              child: DefaultButton(
                text: "Sign Up",
                press: (){
                  Navigator.pushNamed(context, '/sign_up');
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}