import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/todo/todo_app/model/todo_model.dart';
import 'package:flutter_journey/projects/todo/todo_app/widget/checkable_todo_item.dart';
import 'package:google_fonts/google_fonts.dart';

class Keys extends StatefulWidget {
  const Keys({super.key});

  @override
  State<Keys> createState() => _KeysState();
}

class _KeysState extends State<Keys> {
  var _order = 'desc';

  final _todos = [
    Todo(text: 'Learn Flutter', priority: Priority.urgent),
    Todo(text: 'Practice Flutter', priority: Priority.normal),
    Todo(text: 'Explore other courses', priority: Priority.low),
    Todo(text: 'Remove new courses', priority: Priority.normal),
    Todo(text: 'Dont see recent courses', priority: Priority.urgent),
    Todo(text: 'Checkout coupan courses', priority: Priority.low),
  ];

  List<Todo> get _orderedTodos {
    final sortedTodos = List.of(_todos);
    sortedTodos.sort((a, b) {
      final bComesAfterA = a.text.compareTo(b.text);
      return _order == 'asc' ? bComesAfterA : -bComesAfterA;
    });
    return sortedTodos;
  }

  void _changeOrder() {
    setState(() {
      _order = _order == 'asc' ? 'desc' : 'asc';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Internals',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: _changeOrder,
                icon: Icon(
                  _order == 'asc'
                      ? CupertinoIcons.down_arrow
                      : CupertinoIcons.up_arrow,
                ),
                label: Text(
                    'Sort ${_order == 'asc' ? 'Descending' : 'Ascending'}'),
              ),
            ),
            Column(
              children: [
                for (final todo in _orderedTodos)
                  CheckableTodoItem(
                    key: ObjectKey(todo),
                    todo.text,
                    todo.priority,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
