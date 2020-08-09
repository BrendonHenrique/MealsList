import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/components/category_item/category_box.dart';
import '../../models/category.dart';
import '../../routes/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key key, this.category}) : super(key: key);

  void _selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: CategoryBox(category: category),
    );
  }
}
