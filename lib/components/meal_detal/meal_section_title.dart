import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealSectionTitle extends StatelessWidget {
  const MealSectionTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
