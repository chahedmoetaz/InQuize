import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inquize/screens/home/home_screen.dart';
import 'package:inquize/screens/news/news_screen.dart';
import 'package:inquize/screens/profile/profile_screen.dart';
import 'package:inquize/screens/search/search_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Colors.black;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: MenuState.home == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/Search Icon.svg",
                  color: MenuState.search == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>{ Navigator.pushNamed(context, SearchScreen.routeName),}

              ),
              IconButton(
                icon: Icon(Icons.qr_code,
                  color: MenuState.qr == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                {},
              ),
              IconButton(
                icon: Icon(Icons.wifi,
                  color: MenuState.news == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, NewsScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
