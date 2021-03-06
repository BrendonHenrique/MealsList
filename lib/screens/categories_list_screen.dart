import 'package:flutter/widgets.dart';
import '../components/category_item/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesListScreen extends StatelessWidget {
  const CategoriesListScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map(
            (category) => CategoryItem(
              category: category,
            ),
          )
          .toList(),
    );
  }
}
