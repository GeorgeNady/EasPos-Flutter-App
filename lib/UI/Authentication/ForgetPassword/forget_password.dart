
import 'package:easpos/Components/custom_btn.dart';
import 'package:easpos/Components/registerTextField.dart';
import 'package:easpos/UI/Authentication/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';



class ForgetPasswordScreen extends StatefulWidget {
  final navigator;

  const ForgetPasswordScreen({Key key, this.navigator}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomForgetAppbar(label: "Password Recovery",),
      ),
      body:  Container(),
    );
  }
}
