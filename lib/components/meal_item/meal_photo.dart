import 'package:flutter/widgets.dart';

class MealPhoto extends StatelessWidget {
  const MealPhoto({
    Key key,
    @required this.imageUrl,
    @required this.imageHeight,
  }) : super(key: key);

  final String imageUrl;

  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: FadeInImage.assetNetwork(
        fadeInDuration: Duration(seconds: 5),
        fadeInCurve: Curves.elasticOut,
        placeholder: 'assets/images/loading3.gif',
        image: imageUrl,
        height: imageHeight,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
