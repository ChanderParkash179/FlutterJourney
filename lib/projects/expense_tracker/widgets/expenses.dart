import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/projects/expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:flutter_journey/projects/expense_tracker/model/expense.dart';
import 'package:flutter_journey/projects/expense_tracker/widgets/new_expense.dart';
import 'package:flutter_journey/tasks/custom_text_widget_01.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 34.63,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.63,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(
        onAddExpense: _addNewExpense,
      ),
    );
  }

  void _addNewExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(
        expense,
      );
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);

    setState(() {
      _registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense Deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(
              () {
                _registeredExpenses.insert(
                  expenseIndex,
                  expense,
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No Expense Found. Start Adding some!'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const StyledText('Flutter Expense Tracker', 16),
          backgroundColor: Colors.purple.shade900,
          actions: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.add,
                color: Colors.white,
              ),
              onPressed: () {
                _openAddExpenseOverlay();
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: mainContent,
            ),
          ],
        ),
      ),
    );
  }
}
