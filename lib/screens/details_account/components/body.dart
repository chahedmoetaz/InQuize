import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/models/user.dart';
import 'package:inquize/provider/user.dart';
import 'package:inquize/screens/profile/components/profile_pic.dart';
import 'package:inquize/size_config.dart';
import 'package:provider/provider.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    User user=Provider.of<UserProvider>(context).user;
    return Padding(
      padding: padding,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only( top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ProfilePic(),
                detailsWidget(
                    user.following.toString()=='null'?'0':user.following.toString(),
                    'following'),

                detailsWidget(
                   user.participations.toString()=='null'?'0':user.participations.toString(),
                    'participations'),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only( top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(user.firstname,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
                SizedBox(width: 5,),
                Text(user.lastname,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
              ],
            ),
          ),

          Padding(
            padding:EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/complete_profile');

                  },
                  child: Container(
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
                          Icon(Icons.settings,color: Colors.grey),
                          SizedBox(width: 5,),
                          Text('edit',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          user.country==null?SizedBox():Row(
            children: [
              Icon(Icons.location_pin),
              SizedBox(width: 5,),
              Text(user.country,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.black)),
            ],
          ),
          SizedBox(height: 5,),
          user.adresse==null?SizedBox():Row(
            children: [
              Icon(Icons.flag_outlined),
              SizedBox(width: 5,),
              Text(user.adresse,
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
          user.website==null?SizedBox():Text(user.website,
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


          SizedBox(height: 10,),
          Text('Crew member of',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black)
          ),

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
