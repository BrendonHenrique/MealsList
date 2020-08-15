import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealSectionList extends StatelessWidget {
  const MealSectionList({
    Key key,
    @required this.width,
    @required this.allowedHeight,
    @required this.ingredients,
    @required this.child,
  }) : super(key: key);

  final double width;
  final double allowedHeight;
  final List<String> ingredients;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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
      child: child,
    );
  }
}
