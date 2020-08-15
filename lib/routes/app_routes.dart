import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_details_screen.dart';
import 'package:meals/screens/settings_screen.dart';
import 'package:meals/screens/tabs_screen.dart';

class AppRoutes {
  static const HOME = '/';
  static const CATEGORIES_MEALS = '/categories-meals';
  static const MEAL_DETAIL = '/meal-detail';
  static const SETTINGS = '/settings';

  static final routes = {
    AppRoutes.HOME: (_) => TabsScreen(),
    AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(),
    AppRoutes.MEAL_DETAIL: (_) => MealDetailsScreen(),
    AppRoutes.SETTINGS: (_) => SettingsScreen(),
  };
}
