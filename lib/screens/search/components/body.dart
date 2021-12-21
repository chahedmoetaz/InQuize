import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/screens/search/components/search_field.dart';

import '../../../size_config.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(5)),
          SearchField(),
          DefaultTabController(
              length: 4, // length of tabs
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
                      Tab(icon: Icon(Icons.group_work)),
                      Tab(icon: Icon(Icons.wifi_tethering_sharp)),
                      Tab(icon: Icon(Icons.play_arrow_outlined)),
                      Tab(icon: Icon(Icons.person_outline)),

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
                              Container(
                                height: getProportionateScreenWidth(55),
                                padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                                        height: getProportionateScreenWidth(55),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFECDF),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image.asset('image'),
                                      ),
                                      SizedBox(width: getProportionateScreenWidth(10
                                      )),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "name",
                                            style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(16),fontWeight: FontWeight.w700),
                                          ),

                                          Text("name", textAlign: TextAlign.center),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
