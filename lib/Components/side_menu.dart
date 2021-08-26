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
        ],
      ),
    );
  }
}

class MenuListTile extends StatelessWidget {
  final title;
  final icon;
  const MenuListTile({Key key, @required this.title, @required this.icon}) : super(key: key);

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

