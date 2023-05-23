import 'package:flutter/material.dart';
import 'package:inquize/components/coustom_bottom_nav_bar.dart';
import 'package:inquize/provider/user.dart';
import 'package:inquize/screens/profile/profile_screen.dart';
import 'package:provider/provider.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class DetailsAccountScreen extends StatelessWidget {
  static String routeName = "/details_account";

  @override
  Widget build(BuildContext context) {
    var user=Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 18.0),
            child: IconButton(icon: Icon(Icons.menu_outlined), onPressed: () {  Navigator.pushNamed(context, ProfileScreen.routeName); },),
          )
        ],
        title: Text(
          '@${user.username}',
          style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w700),
        ),
        elevation: 1,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

