import 'package:flutter/material.dart';
import 'package:inquize/components/coustom_bottom_nav_bar.dart';
import 'package:inquize/models/program.dart';

import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class NewsScreen extends StatelessWidget {
  static String routeName = "/news";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.news),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: SizedBox(),
      title: Text(
        "News",
        style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w700),
      ),
    );
  }
}
