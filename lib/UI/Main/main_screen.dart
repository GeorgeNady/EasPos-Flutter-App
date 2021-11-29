import 'package:easpos/Components/custom_app_bar.dart';
import 'package:easpos/Components/side_menu.dart';
// import 'package:easpos/UI/Categories/categories_screen.dart';
// import 'package:easpos/UI/Customers/customers_screen.dart';
// import 'package:easpos/UI/Help/help_screen.dart';
import 'package:easpos/UI/Home/home_screen.dart';
// import 'package:easpos/UI/Invoices/invoices_screen.dart';
// import 'package:easpos/UI/Money/money_screen.dart';
// import 'package:easpos/UI/Purchases/purchases_screen.dart';
// import 'package:easpos/UI/Reports/reports_screen.dart';
// import 'package:easpos/UI/Settings/settings_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final navigator;

  const MainScreen({Key key, this.navigator}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          SizedBox(
            width: 240,
            child: SideMenu(pageController: _pageController,),
          ),
          Expanded(
            flex: 4,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CustomAppBar(),
              body: PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HomeScreen(),
                  // CategoriesScreen(),
                  // CustomersScreen(),
                  // InvoicesScreen(),
                  // PurchasesScreen(),
                  // MoneyScreen(),
                  // ReportsScreen(),
                  // SettingsScreen(),
                  // HelpScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


