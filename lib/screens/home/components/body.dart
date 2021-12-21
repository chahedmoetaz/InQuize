import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'post.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(5)),
              HomeHeader(),
          DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: kPrimaryLightColor,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: kPrimaryLightColor,
                        tabs: [
                          Tab(icon: Icon(Icons.bookmark_outline_rounded)),
                          Tab(icon: Icon(Icons.group_work_sharp)),
                          Tab(icon: Icon(Icons.check)),


                        ],
                      ),
                    ),
                    Container(
                        height: SizeConfig.screenHeight*0.7, //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                        ),
                        child: Padding(
                          padding: padding,
                          child: TabBarView(children: <Widget>[

                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getProportionateScreenWidth(10)),
                                  Post(),
                                  SizedBox(height: getProportionateScreenWidth(20)),
                                  Post(),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getProportionateScreenWidth(10)),
                                  Post(),
                                  SizedBox(height: getProportionateScreenWidth(20)),
                                  Post(),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: getProportionateScreenWidth(10)),
                                  Post(),
                                  SizedBox(height: getProportionateScreenWidth(20)),
                                  Post(),
                                ],
                              ),
                            ),

                          ]),
                        )
                    )
                  ])
          ),
        ]),
      ),
    );
  }
}
