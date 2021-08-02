import 'package:easpos/App/app_event.dart';
import 'package:easpos/App/app_state.dart';
import 'package:easpos/Components/custom_btn.dart';
import 'package:easpos/Components/custom_show_model_bottom_sheet.dart';
import 'package:easpos/Components/registerTextField.dart';
import 'package:easpos/Components/register_secure_text_field.dart';
import 'package:easpos/UI/Authentication/LogIn/login.dart';
import 'package:easpos/UI/Authentication/widgets/custom_logo_text_intro.dart';
import 'package:easpos/Utiles/Navigator/navigatorTypes.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:easpos/UI/MainWidgets/list_animator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BLoC/register_bloc.dart';

class RegisterScreen extends StatefulWidget {
  final navigator;

  const RegisterScreen({Key key, this.navigator}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _see = true;
  bool _confirmSee = true;
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor2,
      body: BlocBuilder<RegisterBloc, AppState>(
        builder: (_, state) => Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListAnimator(
                data: <Widget>[
                  SizedBox(height: 20),
                  CustomLogoTextIntro(
                      mainText: "هيا بنا نبدأ", subText: "إنشاء حساب"),

                  //////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////// FULL NAME
                  //////////////////////////////////////////////////////////////
                  RegisterTextField(
                    icon: Icons.person,
                    onChange: context.read<RegisterBloc>().updateName,
                    hint: "الاسم بالكامل",
                    type: TextInputType.text,
                    validate: (String v) {
                      if (v.length < 2) {
                        return "الرجاء إدخال اسم مستخدم صالح";
                      }
                    },
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////////// EMAIL
                  //////////////////////////////////////////////////////////////
                  RegisterTextField(
                    icon: Icons.email,
                    onChange: context.read<RegisterBloc>().updateEmail,
                    hint: "بريد إلكتروني",
                    type: TextInputType.emailAddress,
                    validate: (String v) {
                      if (v.length < 10 || !v.contains("@")) {
                        return "الرجاء إدخال بريد إلكتروني صحيح";
                      }
                    },
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////// USER TYPE
                  //////////////////////////////////////////////////////////////
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: MyColors.accentColor,
                        borderRadius: BorderRadius.circular(50)),
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: InkWell(
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        /*customShowModelBottomSheet(
                            context: context,
                            list: data,
                            onTap: (i) {
                              print("||||||||||||| ${data[i].name}");
                              context
                                  .read<RegisterBloc>()
                                  .updateUserType(data[i].name);
                            });*/
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(6),
                              child: Icon(
                                Icons.supervisor_account_rounded,
                                color: Colors.white,
                                size: 18,
                              )),
                          StreamBuilder<String>(
                            stream: context.read<RegisterBloc>().userTypeStream,
                            builder: (context, snapshot) {
                              return Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  snapshot.hasData ?
                                       snapshot.data
                                      : "اختر نوع المستخدم",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'cairo'),
                                ),
                              );
                            }
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////////// PHONE
                  //////////////////////////////////////////////////////////////
                  RegisterTextField(
                    icon: Icons.phone,
                    onChange: context.read<RegisterBloc>().updatePhone,
                    hint: "الهاتف",
                    type: TextInputType.phone,
                    validate: (String v) {
                      if (v.length < 11 || v[0] != "0") {
                        return "الرجاء إدخال رقم هاتف صحيح";
                      }
                    },
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  ////////////////////////////////////////////////////// ADDRESS
                  //////////////////////////////////////////////////////////////
                  RegisterTextField(
                    icon: Icons.home,
                    onChange: context.read<RegisterBloc>().updateAddress,
                    hint: "عنوان",
                    type: TextInputType.streetAddress,
                    validate: (String v) {
                      if (v.length == 0) {
                        return "الرجاء إدخال عنوان صالح";
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
                    hint: "كلمه السر",
                    onPressed: () {
                      setState(() {
                        _see = !_see;
                      });
                    },
                    validate: (String v) {
                      if (v.length < 6) {
                        return "الرجاء إدخال كلمة مرور صالحة";
                      }
                    },
                    onChange: context.read<RegisterBloc>().updatePassword,
                    obscureText: _see,
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  ////////////////////////////////////////////////////// RE_PASS
                  //////////////////////////////////////////////////////////////
                  RegisterSecureTextField(
                    withIcon: true,
                    icon: Icons.lock_sharp,
                    hint: "تأكيد كلمة المرور",
                    onPressed: () {
                      setState(() {
                        _confirmSee = !_confirmSee;
                      });
                    },
                    validate: (String v) {
                      if (v.length < 6) {
                        return "الرجاء إدخال كلمة مرور تأكيد صحيحة";
                      } else if (!v.contains(
                          context.read<RegisterBloc>().password.value)) {
                        return "يجب أن تتطابق مع كلمة المرور";
                      }
                    },
                    onChange:
                        context.read<RegisterBloc>().updateConfirmedPassword,
                    obscureText: _confirmSee,
                  ),
                  SizedBox(height: 20),

                  //////////////////////////////////////////////////////////////
                  ///////////////////////////////////////////////////// RESUBMIT
                  //////////////////////////////////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomBtn(
                      loading: state is Loading ? true : false,
                      text: "إنشاء",
                      onTap: () {
                        if (_globalKey.currentState.validate()) {
                          context.read<RegisterBloc>().add(Click());
                        } else {
                          return;
                        }
                      },
                      txtColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),

                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("هل لديك حساب؟"),
                    FlatButton(
                        onPressed: () => NavigatorTypes()
                            .changeScreenRemoveUntil(context, LoginScreen()),
                        child: Text("تسجيل الدخول",
                            style: TextStyle(
                                color: Theme.of(context).accentColor))),
                  ]),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
