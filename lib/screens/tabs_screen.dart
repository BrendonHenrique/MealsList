import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/navigation/meal_drawer.dart';
import 'package:meals/screens/categories_list_screen.dart';
import 'package:meals/screens/favorite_screen.dart';
import 'package:meals/models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsScreen({Key key, this.favoriteMeals}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> tabsPages = [];

  @override
  void initState() {
    super.initState();
    tabsPages = [
      CategoriesListScreen(),
      FavoriteScreen(
        favoriteMeals: widget.favoriteMeals,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 60),
                child: Text('Vamos Cozinhar?'),
              )
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category), text: 'Categorias'),
              Tab(icon: Icon(Icons.favorite), text: 'Favoritos'),
            ],
          ),
        ),
        body: TabBarView(
          children: tabsPages.toList(),
        ),
        drawer: MealDrawer(),
      ),
    );
  }
}
