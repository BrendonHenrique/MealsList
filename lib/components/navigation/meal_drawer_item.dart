import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealDrawerItem extends StatelessWidget {
  const MealDrawerItem({
    Key key,
    @required this.icon,
    @required this.label,
    @required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () => onTap(),
    );
  }
}
