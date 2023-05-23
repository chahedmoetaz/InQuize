import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inquize/constants.dart';
import 'package:inquize/helper/userdata.dart';
import 'package:inquize/provider/user-provider.dart';
import 'package:inquize/provider/user.dart';
import 'package:inquize/size_config.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoadingScreen extends StatefulWidget {
  static String routeName = "/loading";
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

late int _userId;

  String _firstTime='';



  bool noInternet=false;




  @override
  void initState() {

    super.initState();
    _loadDate();

  }



  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(

          body: Center(child: SpinKitRing(
            color: kPrimaryColor,
            size: 30,
            lineWidth: 4,
          )),
        );
  }

_loadDate() async {


  SharedPreferences prefs = await SharedPreferences.getInstance();
  _userId = prefs.getInt('userId');
  _firstTime = (prefs.getString('firstTime') ?? "");
  if(_firstTime ==""){
    Navigator.pushNamedAndRemoveUntil(
        context, '/splash', ModalRoute.withName('/splash'));
  }
  else if (_userId == null) {
    Navigator.pushNamedAndRemoveUntil(
        context, '/sign', ModalRoute.withName('/sign'));
  } else {
    UserPreferences().getUser().then((currentuser) {
      if (currentuser.firstname == '')
        Navigator.pushNamedAndRemoveUntil(
            context, '/complete_profile',
            ModalRoute.withName('/complete_profile'));
      else {
        UserData().fetchUser().then((user) {
          Provider.of<UserProvider>(context, listen: false).setUser(user);
          Navigator.pushNamedAndRemoveUntil(
              context, '/home', ModalRoute.withName('/home'));
        });
      }
    });
  }


}






}

