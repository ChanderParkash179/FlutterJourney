import 'package:flutter/material.dart';
import 'package:flutter_journey/widgets/gradient_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 81, 13, 177),
          ],
        ),
      ),
    );
  }
}
