import 'package:easpos/Models/food_category.dart';
import 'package:easpos/UI/MainWidgets/custom_white_container.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

import '../../MainWidgets/custom_elevated_button.dart';

class FoodPicker extends StatefulWidget {
  @override
  _FoodPickerState createState() => _FoodPickerState();
}

class _FoodPickerState extends State<FoodPicker> {
  //temporary data for testing
  final List<FoodCategory> categories = [
    FoodCategory(name: 'مشروبات', id: '1', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '19', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '20', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '21', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '22', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '23', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '24', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '25', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'لحوم', id: '2', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '19', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '20', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '21', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '22', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '23', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '24', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '25', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'سندويش', id: '3', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'مشروبات', id: '4', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '19', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '20', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '21', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'لحوم', id: '5', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '19', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '20', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '21', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '22', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '23', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '24', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '25', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'سندويش', id: '6', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '19', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '20', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '21', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '22', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '23', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '24', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '25', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'مشروبات', id: '7', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '10', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '11', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '12', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '13', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '14', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '15', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '16', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '17', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '18', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '19', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '20', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '21', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '22', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '23', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '24', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '25', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
    FoodCategory(name: 'لحوم', id: '8', foodItems: [
      FoodItem(
          id: '1', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '2', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '3', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '4', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '5', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '6', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '7', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '8', name: 'name', price: 100, image: 'assets/images/food.jpg'),
      FoodItem(
          id: '9', name: 'name', price: 100, image: 'assets/images/food.jpg'),
    ]),
  ];

  int selectedIndex = 0;

  void _changeIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: MyColors.white,
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (ctx, index) => CustomElevatedButton(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                text: categories[index].name,
                textColor:
                    selectedIndex == index ? MyColors.white : MyColors.red,
                color: selectedIndex == index ? MyColors.red : MyColors.white,
                function: () {
                  _changeIndex(index);
                },
              ),
            ),
          ),
          Expanded(
            child: CustomWhiteContainer(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: GridView.builder(
                itemCount: categories[selectedIndex].foodItems.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 140,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (ctx, index) => GridTile(
                  child: Image.asset(
                    categories[selectedIndex].foodItems[index].image,
                    fit: BoxFit.cover,
                  ),
                  footer: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border(
                        bottom: BorderSide(
                          color: MyColors.red,
                          width: 1,
                        ),
                      ),
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          categories[selectedIndex].foodItems[index].name,
                          style: TextStyle(
                            fontFamily: 'DIN',
                            fontSize: 16,
                            color: MyColors.black,
                          ),
                        ),
                        Text(
                          categories[selectedIndex].foodItems[index].price.toString(),
                          style: TextStyle(
                            fontFamily: 'DIN',
                            fontSize: 14,
                            color: MyColors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
