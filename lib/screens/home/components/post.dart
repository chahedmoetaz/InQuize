import 'package:flutter/material.dart';
import 'package:inquize/screens/details_media/details_media_screen.dart';
import 'package:inquize/screens/details_program/details_program_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Post extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
        pressMedia: () =>{ Navigator.pushNamed(context, DetailsMediaScreen.routeName),},
          pressProgram:  () =>{ Navigator.pushNamed(context,  DetailsProgramScreen.routeName),},
          title: ['assets/images/Attessia_TV.png'
          ,'ATTESIA',''],),
      SizedBox(height: 10,),
      Stack(
        children: [
          Container(
          height: getProportionateScreenWidth(170),
          width: double.infinity,

          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(15),
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Attessia_TV.png")
              )
          ),
          ),
          Positioned(bottom:0,right:0,
              child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red.shade200,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight:Radius.circular(20), )
                ),
                child: Center(
                  child: Icon(Icons.send_and_archive,color: Colors.white,),
                ),
              )
          )
        ],
      ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite,color:Colors.red),
                SizedBox(width: 5,),
                Icon(Icons.favorite_border,color:Colors.grey),
                SizedBox(width: 5,),
                Icon(Icons.comment_outlined,color:Colors.grey),
                SizedBox(width: 5,),
                Icon(Icons.share,color:Colors.grey),
              ],
            ),
            Row(
              children: [
                Text('- 9 monthes',style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
    color: Colors.black,
    ),
    ),SizedBox(width: 5,),
                Icon(Icons.timer)
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text('323 ',style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.black,
            ),
            ),
            Text(' Like ',style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.grey,
            ),
            ),
            Text(' 23 ',style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.black,
            ),
            ),
            Text('Share',style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.grey,
            ),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Text('Test post discription',style: TextStyle(
          fontSize: getProportionateScreenWidth(16),
          color: Colors.black,
        ),
        ),
        SizedBox(height: 5,),
        Text('View all Comments',style: TextStyle(
          fontSize: getProportionateScreenWidth(14),
          color: Colors.black,
        ),
        ),

      ],
    );
  }
}
