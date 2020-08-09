import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_details_screen.dart';

class AppRoutes {
  static const HOME = '/';
  static const CATEGORIES_MEALS = '/categories-meals';
  static const MEAL_DETAIL = '/meal-detail';

  static final routes = {
    AppRoutes.HOME: (_) => CategoriesScreen(),
    AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(),
    AppRoutes.MEAL_DETAIL: (_) => MealDetailsScreen(),
  };
}
