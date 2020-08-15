import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/navigation/meal_drawer_header.dart';
import 'package:meals/components/navigation/meal_drawer_item.dart';
import 'package:meals/routes/app_routes.dart';

class MealDrawer extends StatelessWidget {
  const MealDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MealDrawerHeader(),
          MealDrawerItem(
            icon: Icons.restaurant,
            label: 'Refeições',
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.HOME),
          ),
          MealDrawerItem(
            icon: Icons.settings,
            label: 'Configurações',
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}
