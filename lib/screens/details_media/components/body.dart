import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/screens/home/components/post.dart';
import 'package:inquize/size_config.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                    width: getProportionateScreenWidth(110),
                    height:  getProportionateScreenWidth(110),
                    decoration: BoxDecoration(

                      image: DecorationImage(
                          image:AssetImage('assets/images/Attessia_TV.png'),

                          fit: BoxFit.cover),
                    )),
              ),
              detailsWidget(
                  '5',
                  'posts'),

              detailsWidget(
                  '4',
                  'followers'),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only( top: 10.0),
            child: Text('_user.displayName',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5.0),
            child: Text('_user') ,
          ),
          Padding(
            padding:EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: getProportionateScreenWidth(35),
                  width: getProportionateScreenWidth(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kPrimaryLightColor)
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmark_border,color: kPrimaryLightColor),
                        SizedBox(width: 5,),
                        Text('unfollow',style: TextStyle(color: kPrimaryLightColor),)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(35),
                  width: getProportionateScreenWidth(150),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.send_outlined,color: Colors.grey),
                        SizedBox(width: 5,),
                        Text('message',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Icon(Icons.location_pin),
              SizedBox(width: 5,),
              Text('count',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.black)),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.flag_outlined),
              SizedBox(width: 5,),
              Text('Tunisia',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.black)),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.translate),
              SizedBox(width: 5,),
              Text('Arabic, Arabic(Tunisia), English  ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionateScreenWidth(14),
                      color: Colors.black)),
            ],
          ),
          SizedBox(height: 5,),
          Text('https://hafs.comddddd',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: getProportionateScreenWidth(14),
                  color: kPrimaryLightColor)
          ),
          SizedBox(height: 5,),
          Text('New Media discription  ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: getProportionateScreenWidth(14),
                  color: Colors.black)
          ),
          SizedBox(height: 5,),
          Text('More ... ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: getProportionateScreenWidth(14),
                  color: Colors.black)
          ),
          SizedBox(height: 5,),
          Text('Programs',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: getProportionateScreenWidth(16),
                  color: Colors.black)
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image:AssetImage('assets/images/Attessia_TV.png'),

                            fit: BoxFit.contain),
                      )),

                    Text('Abdeli',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.black)
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text('Posts',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: getProportionateScreenWidth(16),
                  color: Colors.black)
          ),
          SizedBox(height: 5,),
          Post()
        ],
      ),
    );
  }

  Widget detailsWidget(String count, String label) {
    return Column(
      children: <Widget>[
        Text(count,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black)),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child:
          Text(label, style: TextStyle(fontSize: 16.0, color: Colors.grey)),
        )
      ],
    );
  }
}
