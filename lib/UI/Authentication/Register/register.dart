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
      backgroundColor: MyColors.white,
      body: BlocBuilder<RegisterBloc, AppState>(
        builder: (_, state) => Form(
          key: _globalKey,
          child: Container(
            child: ListAnimator(
              data: <Widget>[
                SizedBox(height: 20),
                Image.asset('assets/images/the_chef_logo.png', height: 250),
                SizedBox(height: 35),

                //////////////////////////////////////////////////////////////
                //////////////////////////////////////////////////// FULL NAME
                //////////////////////////////////////////////////////////////
                RegisterTextField(
                  icon: Icons.person,
                  onChange: context.read<RegisterBloc>().updateName,
                  hint: "Full name",
                  type: TextInputType.text,
                  validate: (String v) {
                    if (v.length < 2) {
                      return "please enter a valid name";
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
                  hint: "Email",
                  type: TextInputType.emailAddress,
                  validate: (String v) {
                    if (v.length < 10 || !v.contains("@")) {
                      return "please enter a valid email";
                    }
                  },
                ),
                SizedBox(height: 20),

                //////////////////////////////////////////////////////////////
                //////////////////////////////////////////////////////// PHONE
                //////////////////////////////////////////////////////////////
                RegisterTextField(
                  icon: Icons.phone,
                  onChange: context.read<RegisterBloc>().updatePhone,
                  hint: "Phone",
                  type: TextInputType.phone,
                  validate: (String v) {
                    if (v.length < 11 || v[0] != "0") {
                      return "please enter a valid phone number";
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
                  hint: "Password",
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
                  hint: "Password Confirmation",
                  onPressed: () {
                    setState(() {
                      _confirmSee = !_confirmSee;
                    });
                  },
                  validate: (String v) {
                    if (v.length < 6) {
                      return "please enter a valid password";
                    } else if (!v.contains(
                        context.read<RegisterBloc>().password.value)) {
                      return "Incorrect password";
                    }
                  },
                  onChange:
                      context.read<RegisterBloc>().updateConfirmedPassword,
                  obscureText: _confirmSee,
                ),
                SizedBox(height: 20),

                //////////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////// SUBMIT
                //////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomBtn(
                    loading: state is Loading ? true : false,
                    text: "Register",
                    onTap: () {
                      if (_globalKey.currentState.validate()) {
                        context.read<RegisterBloc>().add(Click());
                      } else {
                        print("error yasta ");
                        return;

                      }
                    },
                    txtColor: Colors.white,
                    color: MyColors.red,
                  ),
                ),
                SizedBox(height: 40),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Do you have an account?"),
                  FlatButton(
                      onPressed: () => NavigatorTypes()
                          .changeScreenRemoveUntil(context, LoginScreen()),
                      child: Text("Login",
                          style:
                              TextStyle(color: MyColors.red))),
                ]),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
