
import 'package:easpos/App/app_state.dart';
import 'package:easpos/App/app_event.dart';
import 'package:easpos/UI/Categories/widgets/categories_drop_down_menu.dart';
import 'package:easpos/UI/Categories/widgets/ingredients_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesBloc extends Bloc<AppEvent, AppState> {
  List<IngredientsWidget> _ingredientsList = [
    IngredientsWidget(),
  ];

  List<CategoriesDropDownMenu> _categoriesList = [
    CategoriesDropDownMenu(),
  ];

  List<IngredientsWidget> get ingredientsList => _ingredientsList;
  List<CategoriesDropDownMenu> get categoriesList => _categoriesList;

  CategoriesBloc() : super(Start());

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if(event is AddIngredient){
      _ingredientsList.add(IngredientsWidget());
      yield IngredientAdded();
    }
    if(event is AddCategoryForItem){
      _categoriesList.add(CategoriesDropDownMenu());
      yield CategoryAddedForItem();
    }

  }


}