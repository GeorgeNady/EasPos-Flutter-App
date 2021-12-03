import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderTableRow extends StatelessWidget {
  final number;
  final foodItem;
  final price;

  OrderTableRow(
      {@required this.price, @required this.number, @required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrderTableRowText(text: number.toString(), flex: 1),
        OrderTableRowText(text: foodItem, flex: 3),
        OrderTableRowText(text: price.toString(), flex: 2),
        QuantityRow(),
        OrderTableRowText(text: number.toString(), flex: 2),
        NotesRow(),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            child: Icon(
              FontAwesomeIcons.solidTrashAlt,
              color: MyColors.black,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}

class NotesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          color: MyColors.black,
          fontFamily: 'DIN',
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class QuantityRow extends StatefulWidget {
  @override
  _QuantityRowState createState() => _QuantityRowState();
}

class _QuantityRowState extends State<QuantityRow> {
  int value = 1;

  void addValue() {
    setState(() {
      value++;
    });
  }

  void minusValue() {
    if (value > 1)
      setState(() {
        value--;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            addValue();
          },
          child: Icon(
            Icons.add_circle_outline,
            color: MyColors.black,
            size: 20,
          ),
        ),
        Text(
          '$value',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'DIN',
            color: MyColors.black,
          ),
        ),
        GestureDetector(
          onTap: () {
            minusValue();
          },
          child: Icon(
            Icons.remove_circle_outline,
            color: MyColors.black,
            size: 20,
          ),
        ),
      ],
    );
  }
}

class OrderTableRowText extends StatelessWidget {
  final text;
  final flex;
  OrderTableRowText({@required this.text, @required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'DIN',
              color: MyColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
