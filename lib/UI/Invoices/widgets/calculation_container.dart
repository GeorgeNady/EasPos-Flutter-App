import 'package:easpos/UI/MainWidgets/custom_white_container.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomWhiteContainer(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: MyColors.grey,
                  )
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'عدد الأصناف',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DIN',
                      fontWeight: FontWeight.bold,
                      color: MyColors.black,
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DIN',
                        color: MyColors.black),
                  ),
                  VerticalDivider(color: MyColors.grey, thickness: 2,),
                  Text(
                    'القيمة المضافة',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DIN',
                      fontWeight: FontWeight.bold,
                      color: MyColors.black,
                    ),
                  ),
                  Text(
                    '5 %',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DIN',
                      fontWeight: FontWeight.bold,
                      color: MyColors.black,
                    ),
                  ),
                  AdditionalAmountCheckBox(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'المبلغ الإجمالي',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DIN',
                            fontWeight: FontWeight.bold,
                            color: MyColors.black,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DIN',
                              color: MyColors.black),
                        ),
                        VerticalDivider(color: MyColors.grey, thickness: 2,),
                        Text(
                          'ضريبة الخدمة',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DIN',
                            fontWeight: FontWeight.bold,
                            color: MyColors.black,
                          ),
                        ),
                        Text(
                          '5 %',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DIN',
                            fontWeight: FontWeight.bold,
                            color: MyColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(flex: 2, child: DiscountTextField(),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DiscountTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: TextField(
              style: TextStyle(
                fontSize: 14,
                height: 1,
                color: MyColors.black,
              ),
              decoration: InputDecoration(
                hintText: 'الخصم الشامل',
                hintStyle: TextStyle(
                  fontSize: 12,
                  fontFamily: 'DIN',
                  color: MyColors.black,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: Text(
              '%',
              style: TextStyle(
                  fontSize: 16,
                  color: MyColors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}

class AdditionalAmountCheckBox extends StatefulWidget {
  @override
  _AdditionalAmountCheckBoxState createState() =>
      _AdditionalAmountCheckBoxState();
}

class _AdditionalAmountCheckBoxState extends State<AdditionalAmountCheckBox> {
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
      },
      child: Row(
        children: [
          _isActive
              ? Icon(
                  Icons.check_circle_outline,
                  color: MyColors.blue,
                )
              : Icon(
                  Icons.circle_outlined,
                  color: MyColors.grey,
                ),
          const SizedBox(
            width: 6,
          ),
          Text(
            'إلغاء',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'DIN',
              color: MyColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
