import 'package:easpos/App/app_event.dart';
import 'package:easpos/App/app_state.dart';
import 'package:easpos/Components/custom_text_form_field.dart';
import 'package:easpos/UI/Categories/BloC/categories_bloc.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemInfoColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.article_outlined,
              size: 30,
              color: MyColors.red,
            ),
            title: Text(
              'بيانات الصنف',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'DIN',
                color: MyColors.black,
              ),
            ),
          ),
          Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFormField(hintText: 'الاسم بالعربي'),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(hintText: 'الاسم بالانجليزي'),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(hintText: 'السعر'),
                  const SizedBox(
                    height: 15,
                  ),
                  BlocBuilder<CategoriesBloc, AppState>(
                    builder: (_, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: context
                                  .read<CategoriesBloc>()
                                  .categoriesList
                                  .map((item) => item)
                                  .toList(),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              onPressed: () {
                                context
                                    .read<CategoriesBloc>()
                                    .add(AddCategoryForItem());
                              },
                              icon: Icon(
                                Icons.add_box_outlined,
                                color: MyColors.red,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  BlocBuilder<CategoriesBloc, AppState>(
                    builder: (_, state) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              context
                                  .read<CategoriesBloc>()
                                  .add(AddIngredient());
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  'assets/images/ingredients.png',
                                ),
                              ),
                              title: Text(
                                'إضافة مكونات صنف',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'DIN',
                                  color: MyColors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: context
                                .read<CategoriesBloc>()
                                .ingredientsList
                                .map((item) => item)
                                .toList(),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
