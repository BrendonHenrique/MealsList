import 'package:flutter/foundation.dart';
import 'package:meals/Constant/complexity.dart';
import 'package:meals/Constant/cost.dart';

class Meal {
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.categories,
    @required this.ingredients,
    @required this.steps,
    @required this.complexity,
    @required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Fácil';

      case Complexity.Medium:
        return 'Normal';

      case Complexity.Difficult:
        return 'Difícil';

      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.Cheap:
        return 'Barato';

      case Cost.Fair:
        return 'Normal';

      case Cost.Expensive:
        return 'Caro';

      default:
        return 'Desconhecido';
    }
  }
}
