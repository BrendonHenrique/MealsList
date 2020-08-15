import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealListBuilder extends StatelessWidget {
  const MealListBuilder({
    Key key,
    @required this.ingredients,
  }) : super(key: key);

  final List<String> ingredients;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ingredients.length,
      itemBuilder: (context, index) => Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 8,
          ),
          child: Text(
            ingredients[index],
          ),
        ),
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
