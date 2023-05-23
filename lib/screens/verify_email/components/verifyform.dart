import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:inquize/components/custom_surfix_icon.dart';
import 'package:inquize/components/default_button.dart';
import 'package:inquize/components/form_error.dart';
import 'package:inquize/components/no_account_text.dart';
import 'package:inquize/helper/keyboard.dart';
import 'package:inquize/provider/auth-provider.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class VerifyEmailForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<VerifyEmailForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Continue",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                if(errors.length==0)
                await auth.forgetpassword(email!).then((response) {
               print(response.body);
                  if (response.statusCode != 200  )
                    Flushbar(
                      title: "Error",
                      message: "C'ant find this email",
                      duration: Duration(seconds: 3),
                    ).show(context);
                  else {
                    Flushbar(
                      title: "Done",
                      message: "Check your email",
                      duration: Duration(seconds: 3),
                    ).show(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/home'));
                  }
                });

              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),

        ],
      ),
    );
  }
}