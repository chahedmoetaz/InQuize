import 'package:flutter/material.dart';
import 'package:inquize/components/coustom_bottom_nav_bar.dart';
import 'package:inquize/models/program.dart';

import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }

}
