import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/models/category.dart';
import '../data/dummy_data.dart';
import '../components/meal_item/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: categoryMeals[index],
        ),
      ),
    );
  }
}