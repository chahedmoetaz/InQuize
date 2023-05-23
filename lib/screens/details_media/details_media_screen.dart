import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inquize/components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class DetailsMediaScreen extends StatelessWidget {
  static String routeName = "/detailsmeadia";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Platform.isIOS?Icons.arrow_back_ios_outlined:Icons.arrow_back), onPressed: () { Navigator.pop(context); },
        ),
        title: Text(
          "Media name",
          style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w700),
        ),
        elevation: 1,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

