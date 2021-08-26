import 'package:easpos/Models/charts_model.dart';
import 'package:flutter/material.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'analysis_container.dart';
import 'custom_bar_chart.dart';
import 'donut_pie_chart.dart';

final series = [
  charts.Series(
    id: 'Sales',
    domainFn: (BestSelling sales, _) => sales.name,
    measureFn: (BestSelling sales, _) => sales.amount,
    colorFn: (BestSelling sales, _) =>
        charts.ColorUtil.fromDartColor(sales.color),
    data: [
      BestSelling(name: 'شاورما دجاج', amount: 40000, color: MyColors.blue),
      BestSelling(name: 'بروستد', amount: 90000, color: MyColors.red),
      BestSelling(name: 'ورق عنب', amount: 85000, color: MyColors.yellow),
      BestSelling(name: 'كوكتيل سبيشل', amount: 60000, color: MyColors.purple),
    ],
  )
];

final series2 = [
  charts.Series(
    id: 'SalesBerMonth',
    domainFn: (SalesPerMonth sales, _) => sales.month,
    measureFn: (SalesPerMonth sales, _) => sales.sales,
    colorFn: (SalesPerMonth sales, _) =>
        charts.ColorUtil.fromDartColor(MyColors.purple),
    data: [
      SalesPerMonth(month: 'Jan', sales: 5000),
      SalesPerMonth(month: 'Feb', sales: 4200),
      SalesPerMonth(month: 'Mar', sales: 2300),
      SalesPerMonth(month: 'Apr', sales: 4500),
      SalesPerMonth(month: 'May', sales: 3800),
      SalesPerMonth(month: 'Jun', sales: 3600),
      SalesPerMonth(month: 'Jul', sales: 4100),
      SalesPerMonth(month: 'Aug', sales: 4700),
      SalesPerMonth(month: 'Sep', sales: 4000),
      SalesPerMonth(month: 'Oct', sales: 3500),
      SalesPerMonth(month: 'Nov', sales: 4800),
      SalesPerMonth(month: 'Dec', sales: 4600),
    ],
  )
];

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String valueChoose = 'Europe';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
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
            const SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: 12,
              runSpacing: 12,
              children: [
                Container(
                  color: MyColors.white,
                  height: screenHeight * 0.5,
                  width: 500,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        textDirection: TextDirection.ltr,
                        children: [
                          Column(
                            children: [
                              Text(
                                'مبيعات الشهور',
                                style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Avg. \$5356',
                                style: TextStyle(
                                    color: MyColors.purple, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          DropdownButton(
                            value: valueChoose,
                            style: TextStyle(
                              color: MyColors.black,
                              fontSize: 14,
                            ),
                            onChanged: (newValue){
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                value: 'Europe',
                                child: Text('Europe'),
                              ),
                              DropdownMenuItem(
                                value: 'Asia',
                                child: Text('Asia'),
                              ),
                              DropdownMenuItem(
                                value: 'America',
                                child: Text('America'),
                              ),
                              DropdownMenuItem(
                                value: 'Africa',
                                child: Text('Africa'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          DropdownButton(
                            value: valueChoose,
                            style: TextStyle(
                              color: MyColors.black,
                              fontSize: 14,
                            ),
                            onChanged: (newValue){
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                value: 'Europe',
                                child: Text('Europe'),
                              ),
                              DropdownMenuItem(
                                value: 'Asia',
                                child: Text('Asia'),
                              ),
                              DropdownMenuItem(
                                value: 'America',
                                child: Text('America'),
                              ),
                              DropdownMenuItem(
                                value: 'Africa',
                                child: Text('Africa'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Container(
                        height: 200,
                        child: CustomBarChart(
                          seriesList: series2,
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: MyColors.white,
                  height: screenHeight * 0.5,
                  width: 400,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.ltr,
                        children: [
                          Text(
                            'الأفضل مبيعاً',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          DropdownButton(
                            value: valueChoose,
                            style: TextStyle(
                              color: MyColors.black,
                              fontSize: 14,
                            ),
                            onChanged: (newValue){
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                value: 'Europe',
                                child: Text('Europe'),
                              ),
                              DropdownMenuItem(
                                value: 'Asia',
                                child: Text('Asia'),
                              ),
                              DropdownMenuItem(
                                value: 'America',
                                child: Text('America'),
                              ),
                              DropdownMenuItem(
                                value: 'Africa',
                                child: Text('Africa'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: DonutPieChart(
                          seriesList: series,
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

