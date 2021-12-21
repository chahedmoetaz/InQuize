import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/size_config.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: padding,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
              child: Container(
                  width: getProportionateScreenWidth(110),
                  height: getProportionateScreenWidth(110),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                        image:AssetImage('assets/images/Attessia_TV.png'),

                        fit: BoxFit.none),
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
          padding: const EdgeInsets.only(top: 10.0),
          child: Text('_user.displayName',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 5.0),
          child: Text('_user') ,
        ),
        Padding(
          padding:EdgeInsets.symmetric(
              vertical: getProportionateScreenWidth(10)),
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
                      Text('message',style: TextStyle(color: Colors.grey.shade700),)
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(height:50,width:50,child: Image.asset('assets/images/Attessia_TV.png')),
                SizedBox(width: 5,),
                Text('Attasia TV',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: getProportionateScreenWidth(17),
                        color: Colors.black)
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Jeudi',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.black)
                    ),
                    Text(' from :',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: getProportionateScreenWidth(13),
                            color: Colors.grey.shade700)
                    ),
                    Text('9 pm',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.black)
                    ),
                    Text(' to ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: getProportionateScreenWidth(13),
                            color: Colors.grey.shade700)
                    ),

                  ],
                ),
                Text('11 pm',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.black)
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(15)),
        Text('Crew',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: getProportionateScreenWidth(18),
                color: Colors.black)
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Row(
          children: [
            Container(
                height: getProportionateScreenWidth(50),width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image:AssetImage('assets/images/Attessia_TV.png'),

                      fit: BoxFit.contain),
                )),
            SizedBox(width: 5,),
            Text('Abdeli',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionateScreenWidth(16),
                    color: Colors.black)
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(5)),
        Row(
          children: [
            Container(
                height: getProportionateScreenWidth(50),width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image:AssetImage('assets/images/Attessia_TV.png'),

                      fit: BoxFit.contain),
                )),
            SizedBox(width: 5,),
            Row(
              children: [
                Text('Abdeli',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: getProportionateScreenWidth(16),
                        color: Colors.black)
                ),
                SizedBox(width: 10,),
                Text('Produc',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.black)
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
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
      ],
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
