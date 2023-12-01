import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/meal_app/model/meal.dart';
import 'package:flutter_journey/projects/meal_app/widgets/common/filters.dart';
import 'package:flutter_journey/projects/meal_app/widgets/common/main_drawer.dart';
import 'package:flutter_journey/projects/meal_app/widgets/main/categories.dart';
import 'package:flutter_journey/projects/meal_app/widgets/main/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favouriteMeals = [];

  void _showFavouritMsgInfo(String msg) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  void _toggleMealFavouriteStatus(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal);

    if (isExisting) {
      setState(() {
        _favouriteMeals.remove(meal);
        _showFavouritMsgInfo("Meal is no longer favourite");
      });
    } else {
      setState(() {
        _favouriteMeals.add(meal);
        _showFavouritMsgInfo("Marked as favourite");
      });
    }
  }

  void _setScreen(String identifier) {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const FilterScreen(),
        ),
      );
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage =
        CategoriesScreen(onToggleFavourite: _toggleMealFavouriteStatus);

    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = Meals(
          meals: _favouriteMeals,
          onToggleFavourite: _toggleMealFavouriteStatus);
      activePageTitle = 'Your Favourites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
        ],
      ),
    );
  }
}
