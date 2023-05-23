import 'package:flutter/material.dart';
import 'package:inquize/components/no_account_text.dart';
import 'package:inquize/components/socal_card.dart';
import 'package:inquize/provider/auth-provider.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
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
                  "Sign in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.09),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.010),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () async{
                        await auth.loginMedia('google').then((value) => print(value.body));
                      },
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () async {
                       await auth.loginMedia('facebook').then((value) => print(value.body));
                      },
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () async{
                        await auth.loginMedia('twitter').then((value) => print(value.body));
                      },
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
