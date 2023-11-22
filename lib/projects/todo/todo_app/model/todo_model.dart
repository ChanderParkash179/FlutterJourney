enum Priority { urgent, normal, low }

class Todo {
  Todo({required this.text, required this.priority});

  final String text;
  final Priority priority;
}
