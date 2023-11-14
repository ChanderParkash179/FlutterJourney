import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/expense_tracker/model/expense.dart';
import 'package:flutter_journey/projects/expense_tracker/widgets/expense_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(
        expenses[index],
      ),
    );
  }
}
