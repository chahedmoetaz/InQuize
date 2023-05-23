import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  late File _imageFile;



  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(

            backgroundImage: AssetImage('assets/images/Profile Image.png') ,
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {addpicture(context );},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }



  void addpicture(context) async {
    final  imageSource = Platform.isIOS
        ? await showCupertinoDialog<ImageSource>(
        context: context,
        builder: (context) =>
            CupertinoAlertDialog(
              content: Text("source"),
              actions: <Widget>[
                MaterialButton(
                  child: Text("camera"),
                  onPressed: () => Navigator.pop(context, ImageSource.camera),
                ),
                MaterialButton(
                  child: Text("galery"),
                  onPressed: () => Navigator.pop(context, ImageSource.gallery),
                )
              ],
            )
    )
        :await showDialog<ImageSource>(
        context: context,
        builder: (context) =>
            AlertDialog(elevation: 24.0,
              title: Text("source"),
              actions: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  child: Text("camera"),
                  onPressed: () => Navigator.pop(context, ImageSource.camera),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  child: Text("galery"),
                  onPressed: () => Navigator.pop(context, ImageSource.gallery),
                )
              ],
            )
    );

    if(imageSource != null) {
      // ignore: deprecated_member_use
      File image =await ImagePicker.pickImage(source:imageSource,imageQuality: 90,maxHeight: 150,maxWidth: 150);
      if(image != null) {

        setState(() {
          _imageFile=image;
        });

        print('--------------Image Path--------------------------------');
        print('Image Path ${image.path}');
        print('Image Path $image');
        print('Image Path ${image.toString()}');
        print('--------------Image Path--------------------------------');
        //Navigator.pop(context);
      }
    }

  }

  void update(File image)async {
    String fileName = image.path;
    String imageName = fileName
        .substring(fileName.lastIndexOf("/"), fileName.lastIndexOf("."))
        .replaceAll("/", "");



  }

  Future updateProfilePic(picUrl) async {




  }







}
