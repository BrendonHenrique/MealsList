import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/meal_item/meal_label.dart';
import 'package:meals/components/meal_item/meal_photo_with_title.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/routes/app_routes.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({Key key, this.meal}) : super(key: key);

  void _selectMeal(ctx) {
    Navigator.of(ctx).pushNamed(AppRoutes.MEAL_DETAIL, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => _selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Column(
          children: <Widget>[
            MealPhotoWithTitle(meal: meal),
            MealLabel(
              complexityText: meal.complexityText,
              costText: meal.costText,
              duration: meal.duration,
            ),
          ],
        ),
      ),
    );
  }
}
