import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressProgram,
    required this.pressMedia,
  }) : super(key: key);

  final List<String> title;
  final GestureTapCallback pressMedia;
  final GestureTapCallback pressProgram;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: pressMedia,
          child: Row(
            children: [
              Image.asset(title[0],height: 50,),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title[1],
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.black,
                    ),
                  ),
                 // SizedBox(width: 10,),
                  Text(
                    '@'+title[1],
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: pressProgram,
          child: Container(
            height: 50,width: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),

            ),
            child: Center(
              child: Text(
                "",
                style: TextStyle(color: Color(0xFFBBBBBB)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
