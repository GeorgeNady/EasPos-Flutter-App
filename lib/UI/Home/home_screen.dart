import 'package:easpos/UI/Home/widgets/analysis_container.dart';
import 'package:easpos/UI/Home/widgets/best_selling_container.dart';
import 'package:easpos/UI/Home/widgets/months_selling_container.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenght = MediaQuery.of(context).size.width;
    print(screenHeight);
    print(screenght);
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                spacing: 12,
                runSpacing: 12,
                children: [
                  AnalysisContainer(
                    title: 'اليومية',
                    amount: 39000,
                    change: 13.8,
                    changeUp: false,
                    chartsColor: MyColors.green,
                  ),
                  AnalysisContainer(
                    title: 'مصروفات اليوم',
                    amount: 39000,
                    change: 13.8,
                    changeUp: true,
                    chartsColor: MyColors.purple,
                  ),
                  AnalysisContainer(
                    title: 'مبيعات الشهر',
                    amount: 39000,
                    change: 13.8,
                    changeUp: false,
                    chartsColor: MyColors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                spacing: 12,
                runSpacing: 12,
                children: [
                  MonthsSellingContainer(),
                  BestSellingContainer(),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
