import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/meal_detal/meal_list_builder.dart';
import 'package:meals/components/meal_detal/meal_section_list.dart';
import 'package:meals/components/meal_detal/meal_section_title.dart';
import 'package:meals/models/meal.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({
    Key key,
    @required this.allowedWidth,
    @required this.meal,
  }) : super(key: key);

  final double allowedWidth;
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MealSectionTitle(
          title: 'Ingredientes',
        ),
        MealSectionList(
          key: UniqueKey(),
          width: allowedWidth * 0.8,
          allowedHeight: 500,
          ingredients: meal.ingredients,
          child: MealListBuilder(ingredients: meal.ingredients),
        ),
        Divider(),
        MealSectionTitle(title: 'Passos'),
        MealSectionList(
          key: UniqueKey(),
          width: allowedWidth * 0.8,
          allowedHeight: 500,
          ingredients: meal.ingredients,
          child: ListView.builder(
            itemCount: meal.steps.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
                title: Text(meal.steps[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
