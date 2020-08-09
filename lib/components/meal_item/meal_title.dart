import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealTitle extends StatelessWidget {
  const MealTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Container(
        width: 300,
        color: Colors.black54,
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          softWrap: true,
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
