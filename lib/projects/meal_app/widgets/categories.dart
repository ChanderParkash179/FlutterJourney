import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/meal_app/data/category_list.dart';
import 'package:flutter_journey/projects/meal_app/data/meal_list.dart';
import 'package:flutter_journey/projects/meal_app/model/category.dart';
import 'package:flutter_journey/projects/meal_app/widgets/category_grid_item.dart';
import 'package:flutter_journey/projects/meal_app/widgets/meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeal = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Meals(
          text: category.title,
          meals: filteredMeal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pick Your Category',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: GridView(
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
      ),
    );
  }
}
