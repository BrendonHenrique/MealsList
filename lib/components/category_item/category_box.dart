import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/models/category.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    Key key,
    @required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(2, 4), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            category.color.withOpacity(0.5),
            category.color,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      padding: EdgeInsets.all(15),
    );
  }
}
