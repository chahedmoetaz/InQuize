import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';

import '../../../size_config.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> medias = [
      {"image": "assets/images/Flash image.svg", "name": "ETTASIAAA"},
      {"image": "assets/images/Bill image.svg", "name": "EL HIWAR"},
      {"image": "assets/images/Game image.svg", "name": "WATANIA"},
      {"image": "assets/images/Gift image.svg", "name": "WATANIA2"},
      {"image": "assets/images/Discover.svg", "name": "HAnibal"},
    ];
    var padding =EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20));
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:padding,
              child: Text(
                "Today",
                style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w800),
              ),
            ),
            Divider(),
            Padding(
              padding: padding,
              child: Row(
                children: [
                  Icon(Icons.wifi_tethering,size: getProportionateScreenWidth(30),),
                  Text(
                    "News media",
                    style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w500),
                  ),


                ],
              ),
            ),
            Divider(),
          Container(
            width: SizeConfig.screenWidth,
          height: getProportionateScreenWidth(380),
            child: ListView.builder(
              itemCount: medias.length,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 5),
              itemBuilder:(context,index) => Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: MediaCard(
                image: medias[index]["image"],
                name: medias[index]["name"],
                press: () {print(medias[index]["name"]);},
            ),
              ),),
          ),

            Divider(),
            Padding(
              padding: padding,
              child: Row(
                children: [
                  Icon(Icons.play_arrow_outlined,size: getProportionateScreenWidth(30),),
                  Text(
                    "New projects",
                    style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(19),fontWeight: FontWeight.w500),
                  ),


                ],
              ),
            ),
          ],
        ));
  }
}

class MediaCard extends StatelessWidget {
  const MediaCard({
    Key? key,
    required this.image,
    required this.name,
    required this.press,
  }) : super(key: key);

  final String? image, name;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: padding,
          child: GestureDetector(
            onTap: press,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                      height: getProportionateScreenWidth(55),
                      width: getProportionateScreenWidth(55),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(image!),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name!,
                          style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(16),fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height:10),
                        Text(name!, textAlign: TextAlign.center),
                      ],
                    )
                  ],
                ),
                Container(
                  height: getProportionateScreenWidth(25),
                  width: getProportionateScreenWidth(90),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bookmark_border,color: Colors.white,),
                      Text('Follow',style: TextStyle(color: Colors.white,fontSize: getProportionateScreenWidth(13)),),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
