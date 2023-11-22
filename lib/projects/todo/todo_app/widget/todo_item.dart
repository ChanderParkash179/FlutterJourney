import 'package:flutter/material.dart';

import '../model/todo_model.dart';

class TodoItem extends StatelessWidget {
  final String text;
  final Priority priority;

  const TodoItem({super.key, required this.text, required this.priority});

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.low_priority;

    if (priority == Priority.normal) {
      icon = Icons.list;
    }

    if (priority == Priority.urgent) {
      icon = Icons.notifications_active;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }
}
