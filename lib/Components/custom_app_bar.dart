import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.white,
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/support.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/chat.png'),
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: MyColors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          padding: const EdgeInsets.only(left: 60, right: 20),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: MyColors.grey),
            ),
          ),
          child: Center(
            child: Text(
              'Mohamed',
              style: TextStyle(
                color: MyColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
