import 'package:easpos/Utiles/colors.dart';
import 'package:easpos/Utiles/constants.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  final PageController pageController;

  SideMenu({
    @required this.pageController,
});

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.red,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'EAS - POS',
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'SourceSansPro',
            letterSpacing: 5,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: MyColors.darkRed,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.separated(
          itemCount: Constants.SIDE_MENU_ITEMS.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 4,
          ),
          itemBuilder: (context, index) => Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                color: MyColors.white,
                height: selectedIndex == index ? 55 : 0,
                width: 3,
              ),
              Expanded(
                child: Container(
                  color: selectedIndex == index ? MyColors.darkRed : MyColors.red,
                  child: ListTile(
                    title: Text(
                      Constants.SIDE_MENU_ITEMS.keys.toList()[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'DIN',
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images/${Constants.SIDE_MENU_ITEMS.values.toList()[index]}.png',),
                    ),
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        widget.pageController.jumpToPage(index);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
