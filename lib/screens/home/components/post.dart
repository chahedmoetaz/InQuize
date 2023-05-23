import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inquize/screens/details_media/details_media_screen.dart';
import 'package:inquize/screens/details_program/details_program_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class Post extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:padding,
          child: SectionTitle(
          pressMedia: () =>{ Navigator.pushNamed(context, DetailsMediaScreen.routeName),},
            pressProgram:  () =>{ Navigator.pushNamed(context,  DetailsProgramScreen.routeName),},
            title: ['assets/images/Attessia_TV.png'
            ,'ATTESIA',''],),
        ),
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

              image: new DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/Attessia_TV.png")
              )
          ),
          ),
          Positioned(bottom:0,right:0,
              child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), )
                ),
                child: Center(
                  child: Icon(Icons.send_and_archive,color: Colors.white,),
                ),
              )
          )
        ],
      ),
        SizedBox(height: 10,),
        Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(height:25,child: Image.asset('assets/icons/heart.png')),
                  SizedBox(width: 5,),
                  SizedBox(height:25,child: Image.asset('assets/icons/thumb-down.png')),
                  SizedBox(width: 5,),
                  SizedBox(height:25,child: Image.asset('assets/icons/message-circle.png')),
                  SizedBox(width: 5,),
                  SizedBox(height:25,child: Image.asset('assets/icons/arrow-forward-up.png')),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('- 9 monthes',style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
    color: Colors.black,
    ),
    ),SizedBox(width: 5,),
                  SizedBox(height:25,child: Image.asset('assets/icons/clock.png'))
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
       Padding(
         padding: padding,
         child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
           children: [
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
         ),
       )

      ],
    );
  }
}
