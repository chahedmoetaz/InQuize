import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SearchField(),
          Image.asset(
            'assets/images/logo.png',height: getProportionateScreenWidth(60),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconBtnWithCounter(
                svgSrc: Icons.notifications_none,
                numOfitem: 3,
                press: () {},
              ),
              SizedBox(width: 5,),
              IconBtnWithCounter(
                svgSrc: Icons.send,
                numOfitem: 5,
                press: () {},
              ),
            ],
          ),

        ],
      ),
    );
  }
}
