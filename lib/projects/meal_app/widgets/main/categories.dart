import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/meal_app/data/category_list.dart';
import 'package:flutter_journey/projects/meal_app/data/meal_list.dart';
import 'package:flutter_journey/projects/meal_app/model/category.dart';
import 'package:flutter_journey/projects/meal_app/model/meal.dart';
import 'package:flutter_journey/projects/meal_app/widgets/common/category_grid_item.dart';
import 'package:flutter_journey/projects/meal_app/widgets/main/meals.dart';

class CategoriesScreen extends StatelessWidget {
  final void Function(Meal meal) onToggleFavourite;

  const CategoriesScreen({super.key, required this.onToggleFavourite});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeal = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Meals(
          title: category.title,
          meals: filteredMeal,
          onToggleFavourite: onToggleFavourite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView(
        padding: const EdgeInsets.all(24.0),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(
                  context,
                  category,
                );
              },
            ),
        ],
      ),
    );
  }
}
