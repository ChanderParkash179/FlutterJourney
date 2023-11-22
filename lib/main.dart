import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/flutter_internals/ui_updates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const UIUpdates(),
    );
  }
}
