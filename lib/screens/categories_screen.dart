import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/category_list/categories_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar ?'),
      ),
      body: Container(
        child: CategoriesList(),
      ),
    );
  }
}
