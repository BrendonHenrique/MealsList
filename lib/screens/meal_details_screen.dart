import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/meal_detal/meal_detail.dart';
import 'package:meals/components/meal_item/meal_photo.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;

    final _mediaQuery = MediaQuery.of(context).size;
    final allowedHeight = _mediaQuery.height;
    final allowedWidth = _mediaQuery.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Refeição'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MealPhoto(
                imageUrl: meal.imageUrl, imageHeight: allowedHeight * 0.3),
            MealDetail(
              allowedWidth: allowedWidth,
              meal: meal,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop(meal.title);
        },
      ),
    );
  }
}
