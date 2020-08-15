import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealDrawerHeader extends StatelessWidget {
  const MealDrawerHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Theme.of(context).accentColor,
      alignment: Alignment.bottomLeft,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('assets/images/drawer-bg.png'),
            fit: BoxFit.fill,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/black-woman.png'),
                    radius: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'It\'s Cooking Time',
                  style: TextStyle(
                    fontFamily: 'LibreCaslon',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
