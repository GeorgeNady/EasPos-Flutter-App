import 'dart:ui';

import 'package:easpos/App/app_state.dart';
import 'package:easpos/App/app_event.dart';
import 'package:easpos/Components/choose_dialog.dart';
import 'package:easpos/Components/custom_btn.dart';
import 'package:easpos/Components/registerTextField.dart';
import 'package:easpos/Components/register_secure_text_field.dart';
import 'package:easpos/UI/MainWidgets/list_animator.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:easpos/Utiles/shared_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BLoC/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  final navigator;

  const LoginScreen({Key key, this.navigator}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String status = "";
  bool _see = true;
  bool visible = false;
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: BlocBuilder<LoginBloc, AppState>(
        builder: (_, state) {
          return Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: _globalKey,
              child: ListAnimator(
                data: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/the_chef_logo.png', height: 250),
                  SizedBox(height: 35),
                  //////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////////// EMAIL
                  //////////////////////////////////////////////////////////////
                  RegisterTextField(
                    icon: Icons.email,
                    onChange: context.read<LoginBloc>().updateEmail,
                    hint: "Email",
                    type: TextInputType.emailAddress,
                    validate: (String v) {
                      if (v.length < 10 || !v.contains("@")) {
                        return "please enter a valid number";
                      }
                    },
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  ///////////////////////////////////////////////////////// PASS
                  //////////////////////////////////////////////////////////////
                  RegisterSecureTextField(
                    withIcon: true,
                    icon: Icons.lock_sharp,
                    hint: "password",
                    onPressed: () {
                      setState(() {
                        _see = !_see;
                      });
                    },
                    validate: (String v) {
                      if (v.length < 6) {
                        return "please enter a valid password";
                      }
                    },
                    onChange: context.read<LoginBloc>().updatePassword,
                    obscureText: _see,
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////////// LOGIN
                  //////////////////////////////////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomBtn(
                      loading: state is Loading ? true : false,
                      text: "Login",
                      onTap: () {
                        if (_globalKey.currentState.validate()) {
                          context.read<LoginBloc>().add(Click());
                        } else {
                          return;
                        }
                      },
                      txtColor: Colors.white,
                      color: MyColors.red,
                    ),
                  ),
                  SizedBox(height: 10),

                  // -------------------------------------------------------- Forget Password
                  Visibility(
                    visible: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: InkWell(
                          onTap: () {
                            // TODO
                          },
                          child: Text(
                            "Do you forget password?",
                            style: TextStyle(
                                color: Theme.of(context).accentColor),
                          )),
                    ),
                  ),

                  SizedBox(height: 10),

                  /* Text("Sign In With",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18.0),),*/
                  // SizedBox(height: 10),
                  // CustomSocialMedia(),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("You don't have an account?"),
                        FlatButton(
                            onPressed: () => {
                              // TODO
                              NamedNavigatorImpl().navigate(Routes.REGISTER_ROUTE,clean: true,replace: true)
                            },
                            child: Text("Create new account",
                                style: TextStyle(
                                    color: MyColors.red))),
                      ]),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.bottomCenter,
                    widthFactor: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/footer.png"),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
