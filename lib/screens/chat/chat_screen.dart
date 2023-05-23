import 'package:flutter/material.dart';
import 'package:inquize/models/message.dart';

import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat";
  final UserModul user;

  ChatScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    return Body(user :this.user,);
  }
}
