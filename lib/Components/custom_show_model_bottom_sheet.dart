import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T> customShowModelBottomSheet<T>(
    {BuildContext context, List list, Function onTap}) {
  return showModalBottomSheet(
      enableDrag: true,
      backgroundColor: Colors.black12,
      context: context,
      isScrollControlled: false,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: .6,
          maxChildSize: 1.0,
          minChildSize: .5,
          builder: (_, controller) => Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                ),
                color: MyColors.backgroundColor2),
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        child: Text(
                          "${list[index].name}",
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          onTap(index);
                        },
                      ),
                    ),
                    Visibility(
                      visible: index != list.length - 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          indent: 10.0,
                          endIndent: 10.0,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      });
}

class CustomModelSheet {
  final String name;

  CustomModelSheet(this.name);
}
