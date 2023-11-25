import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/meal_app/model/meal.dart';
import 'package:flutter_journey/projects/meal_app/widgets/meal_item.dart';

class Meals extends StatelessWidget {
  final String text;
  final List<Meal> meals;
  const Meals({
    super.key,
    required this.text,
    required this.meals,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
          meals[index],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: content,
    );
  }
}
