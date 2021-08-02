import 'package:easpos/App/app_state.dart';
import 'package:easpos/App/app_event.dart';
import 'package:easpos/Components/choose_dialog.dart';
import 'package:easpos/Components/custom_btn.dart';
import 'package:easpos/Components/registerTextField.dart';
import 'package:easpos/Components/register_secure_text_field.dart';
import 'package:easpos/UI/Authentication/widgets/custom_logo_text_intro.dart';
import 'package:easpos/UI/MainWidgets/list_animator.dart';
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
      backgroundColor: MyColors.backgroundColor2,
      body: Stack(
        children: [
          BlocBuilder<LoginBloc, AppState>(
            builder: (_, state) {
              return Form(
                key: _globalKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListAnimator(
                    data: [
                      SizedBox(
                        height: 20,
                      ),
                      CustomLogoTextIntro(
                        mainText: "مرحبا بعودتك",
                        subText: "تسجيل الدخول بحسابك الشخصى",
                      ),

                      //////////////////////////////////////////////////////////////
                      //////////////////////////////////////////////////////// EMAIL
                      //////////////////////////////////////////////////////////////
                      RegisterTextField(
                        icon: Icons.email,
                        onChange: context.read<LoginBloc>().updateEmail,
                        hint: "البريد الألكترونى",
                        type: TextInputType.emailAddress,
                        validate: (String v) {
                          if (v.length < 10 || !v.contains("@")) {
                            return "برجاء إدخال بريد الكترونى صالح";
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
                        hint: "كلمة المرور",
                        onPressed: () {
                          setState(() {
                            _see = !_see;
                          });
                        },
                        validate: (String v) {
                          if (v.length < 6) {
                            return "برجاء إدخال كلمة مرور صحيحة";
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
                          text: "تسجيل الدخول",
                          onTap: () {
                            if (_globalKey.currentState.validate()) {
                              context.read<LoginBloc>().add(Click());
                            } else {
                              return;
                            }
                          },
                          txtColor: Colors.white,
                          color: null,
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
                                "نسيت كلمة السر؟",
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
                            Text("لا تمتلك حساب ؟"),
                            FlatButton(
                                onPressed: () => {
                                      // TODO
                                    },
                                child: Text("انشئ حساب جديد",
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor))),
                          ]),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              );
            },
          ),
          Visibility(
            visible: visible ?? false,
            child: Align(
              alignment: Alignment.center,
              child: chooseDialog(
                buttonColor: Theme.of(context).accentColor,
                buttonTxt: "Submit",
                buttonTxtColor: Colors.white,
                changed: (v) {
                  setState(() {
                    status = v;
                  });
                  preference.writeData(CachingKey.USER_TYPE, v);
                },
                msg: "Choose Your Type",
                headTxtColor: Theme.of(context).accentColor,
                selectedDepartment: status,
                context: context,
                btnOnPress: () {
                  // NavigatorTypes()
                  //     .changeRoute(context: context, widget: UserPage());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
