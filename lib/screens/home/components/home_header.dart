import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inquize/screens/message/message_screen.dart';
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
            'assets/images/logo.png',height: getProportionateScreenWidth(50),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconBtnWithCounter(
                svgSrc: 'assets/icons/bell.png',

                press: () {},
              ),
              IconBtnWithCounter(
                svgSrc: 'assets/icons/send.png',
                numOfitem: 5,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
                },
              ),
            ],
          ),

        ],
      ),
    );
  }
}
