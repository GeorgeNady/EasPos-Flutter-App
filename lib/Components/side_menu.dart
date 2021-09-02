import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/shared_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:easpos/Utiles/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.red,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'EAS - POS',
          style: TextStyle(
            color: MyColors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: MyColors.red,
      ),
      body: ListView(
        children: [
          MenuListTile(title: 'الرئيسية', icon: 'home'),
          MenuListTile(title: 'الأصناف والفئات', icon: 'products'),
          MenuListTile(title: 'العملاء', icon: 'customers'),
          MenuListTile(title: 'الفواتير', icon: 'invoices'),
          MenuListTile(title: 'المشتريات', icon: 'invoices'),
          MenuListTile(title: 'الحسابات', icon: 'money'),
          MenuListTile(title: 'التقارير', icon: 'dashboard'),
          MenuListTile(title: 'الإعدادات', icon: 'settings'),
          MenuListTile(title: 'مركز المساعدة', icon: 'help'),
          MenuListTile(title: 'تسجيل الخروج', icon: 'help',function: () {
            FirebaseAuth.instance.signOut().then((value){
              preference.writeData(CachingKey.COMPANY_ID, "");
              NamedNavigatorImpl()
                  .navigate(Routes.LOGIN_ROUTE, replace: true, clean: true);
            });

          },),
        ],
      ),
    );
  }
}

class MenuListTile extends StatelessWidget {
  final title;
  final icon;
  final Function function;
  const MenuListTile({Key key, @required this.title, @required this.icon,this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/images/$icon.png'),
      title: Text(
        title,
        style: TextStyle(
          color: MyColors.white,
          fontSize: 18,
        ),
      ),
      onTap: () {},
    );
  }
}

