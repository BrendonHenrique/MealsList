import 'package:flutter/material.dart';
import './routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColorLight: _colorFromHex('#F5F3F5'),
        primaryColorDark: _colorFromHex('#565676'),
        accentColor: _colorFromHex('#F1C40F'),
        canvasColor: _colorFromHex('#F5F3F5'),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: AppRoutes.routes,
    );
  }
}
