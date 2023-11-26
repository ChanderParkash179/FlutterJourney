import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/meal_app/widgets/main/categories.dart';
import 'package:flutter_journey/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.currentTheme(),
      home: const CategoriesScreen(),
    );
  }
}
