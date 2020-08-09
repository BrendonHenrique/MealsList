import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealIngredients extends StatelessWidget {
  const MealIngredients({
    Key key,
    @required this.allowedWidth,
    @required this.allowedHeight,
    @required this.ingredients,
  }) : super(key: key);

  final double allowedWidth;
  final double allowedHeight;
  final List<String> ingredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Ingredientes',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          width: allowedWidth * 0.6,
          height: allowedHeight * 0.4,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(2, 4), // changes position of shadow
              ),
            ],
          ),
          child: ListView.builder(
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
          ),
        ),
      ],
    );
  }
}
