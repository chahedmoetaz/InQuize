import 'package:flutter/material.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/screens/sign_in/sign_in_screen.dart';
import 'package:inquize/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;


  List<Map<String, String>> splashData = [
    {
      "text": "",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "",
      "image": "assets/images/splash_3.png"
    },
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',height: getProportionateScreenWidth(100),),
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        _saveData();

                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('firstTime','done');
    Navigator.pushNamedAndRemoveUntil(
        context, '/sign', ModalRoute.withName('/sign'));
  }
}
