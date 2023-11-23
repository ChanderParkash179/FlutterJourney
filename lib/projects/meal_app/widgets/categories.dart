import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/meal_app/data/category_list.dart';
import 'package:flutter_journey/projects/meal_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(category: category),
        ],
      ),
    );
  }
}
