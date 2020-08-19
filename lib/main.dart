import 'package:flutter/material.dart';
import 'package:meals/models/settings.dart';
import './routes/app_routes.dart';
import 'models/meal.dart';
import './data/dummy_data.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_details_screen.dart';
import 'package:meals/screens/settings_screen.dart';
import 'package:meals/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoritesMeals = [];
  Settings settings = Settings();

  void _filterMealsBySettings(Settings settings) {
    setState(() {
      this.settings = settings;
      this._availableMeals = DUMMY_MEALS.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColorLight: _colorFromHex('#F5F3F5'),
        primaryColorDark: _colorFromHex('#565676'),
        accentColor: _colorFromHex('#F1C40F'),
        canvasColor: _colorFromHex('#F5F3F5'),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (_) => TabsScreen(
              favoriteMeals: _favoritesMeals,
            ),
        AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(
              meals: _availableMeals,
            ),
        AppRoutes.MEAL_DETAIL: (_) => MealDetailsScreen(),
        AppRoutes.SETTINGS: (_) => SettingsScreen(
              onSettingsChanged: _filterMealsBySettings,
              settings: settings,
            ),
      },
    );
  }
}
