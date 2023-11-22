// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/todo/todo_app/model/todo_model.dart';

class CheckableTodoItem extends StatefulWidget {
  final String text;
  final Priority priority;

  const CheckableTodoItem(this.text, this.priority, {super.key});

  @override
  State<CheckableTodoItem> createState() => _CheckableTodoItemState();
}

class _CheckableTodoItemState extends State<CheckableTodoItem> {
  var _done = false;

  void _setDone(bool? isChecked) {
    setState(() {
      _done = isChecked ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.low_priority;

    if (widget.priority == Priority.normal) {
      icon = Icons.list;
    }

    if (widget.priority == Priority.urgent) {
      icon = Icons.notifications_active;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Checkbox(value: _done, onChanged: _setDone),
          const SizedBox(width: 12),
          Icon(icon),
          const SizedBox(width: 12),
          Text(widget.text),
        ],
      ),
    );
  }
}
