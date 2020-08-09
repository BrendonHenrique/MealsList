import 'package:flutter/widgets.dart';
import 'package:meals/components/meal_item/meal_photo.dart';
import 'package:meals/components/meal_item/meal_title.dart';
import 'package:meals/models/meal.dart';

class MealPhotoWithTitle extends StatelessWidget {
  const MealPhotoWithTitle({
    Key key,
    @required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MealPhoto(imageUrl: meal.imageUrl, imageHeight: 200),
        MealTitle(title: meal.title),
      ],
    );
  }
}
