import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inquize/screens/details_account/details_account_screen.dart';
import 'package:inquize/screens/home/home_screen.dart';
import 'package:inquize/screens/news/news_screen.dart';
import 'package:inquize/screens/profile/profile_screen.dart';
import 'package:inquize/screens/search/search_screen.dart';
import 'package:inquize/size_config.dart';

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

      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: SizedBox(
                  height: getProportionateScreenWidth(40),
                  child: Image.asset("assets/icons/home.png",
                    color: MenuState.home == selectedMenu
                        ? kPrimaryLightColor
                        : inActiveIconColor,
                  ),
                ),
                onTap: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              GestureDetector(
                  child: SizedBox(
                    height: getProportionateScreenWidth(40),
                    child: Image.asset("assets/icons/search.png",
                    color: MenuState.search == selectedMenu
                        ? kPrimaryLightColor
                        : inActiveIconColor,
                  ),
                ),
                onTap: () =>{ Navigator.pushNamed(context, SearchScreen.routeName),}

              ),
              GestureDetector(
                child: SizedBox(
                  height: getProportionateScreenWidth(40),
                  child: Image.asset("assets/icons/scan.png",
                    color: MenuState.qr == selectedMenu
                        ? kPrimaryLightColor
                        : inActiveIconColor,
                  ),
                ),
                onTap: () =>
                {},
              ),
              GestureDetector(
                child: SizedBox(
                  height: getProportionateScreenWidth(40),
                  child: Image.asset("assets/icons/brand-safari.png",
                    color: MenuState.news == selectedMenu
                        ? kPrimaryLightColor
                        : inActiveIconColor,
                  ),
                ),
                onTap: () =>
                    Navigator.pushNamed(context, NewsScreen.routeName),
              ),
              GestureDetector(
                child: SizedBox(
                  height: getProportionateScreenWidth(40),
                  child: Image.asset("assets/icons/user.png",
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryLightColor
                        : inActiveIconColor,
                  ),
                ),
                onTap: () =>
                    Navigator.pushNamed(context, DetailsAccountScreen.routeName),
              ),
            ],
          )),
    );
  }
}
