import 'package:flutter/cupertino.dart';

class SalesPerDay {
  String day;
  double sales;

  SalesPerDay({
    @required this.day,
    @required this.sales,
  });
}

class SpendsPerDay {
  String day;
  double spends;

  SpendsPerDay({
    @required this.day,
    @required this.spends,
  });
}

class SalesPerMonth {
  String month;
  double sales;

  SalesPerMonth({
    @required this.month,
    @required this.sales,
  });
}

class BestSelling {
  String name;
  double amount;
  Color color;

  BestSelling({
    @required this.name,
    @required this.amount,
    @required this.color,
  });
}

