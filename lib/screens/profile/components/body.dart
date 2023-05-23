import 'package:flutter/material.dart';
import 'package:inquize/helper/userdata.dart';
import 'package:inquize/provider/auth-provider.dart';
import 'package:inquize/provider/user.dart';
import 'package:inquize/screens/complete_profile/complete_profile_screen.dart';
import 'package:inquize/screens/home/home_screen.dart';
import 'package:inquize/screens/sign_in/sign_in_screen.dart';
import 'package:inquize/screens/verify_email/verify_email_screen.dart';
import 'package:provider/provider.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () =>{ Navigator.pushNamed(context, CompleteProfileScreen.routeName),}
          ),
          ProfileMenu(
            text: "Verify email",
            icon: "assets/icons/Mail.svg",
            press: () =>{ Navigator.pushNamed(context, VerifyEmailScreen.routeName),}
          ),

          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              UserPreferences().removeUser();

              auth.logout();
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign', ModalRoute.withName('/sign'));
            },
          ),
        ],
      ),
    );
  }
}
