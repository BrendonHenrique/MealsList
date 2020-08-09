import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealLabel extends StatelessWidget {
  const MealLabel({
    Key key,
    @required this.complexityText,
    @required this.costText,
    @required this.duration,
  }) : super(key: key);

  final String complexityText;
  final String costText;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.schedule),
              SizedBox(
                width: 6,
              ),
              Text('${duration} min')
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.fastfood),
              SizedBox(
                width: 6,
              ),
              Text('${complexityText}')
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.attach_money),
              SizedBox(
                width: 6,
              ),
              Text('${costText}')
            ],
          ),
        ],
      ),
    );
  }
}
