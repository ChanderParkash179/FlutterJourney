import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _inputTitleController = TextEditingController();
  final _inputAmountController = TextEditingController();

  @override
  void dispose() {
    _inputTitleController.dispose();
    _inputAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _inputTitleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
              hintText: 'Enter Expense!',
            ),
          ),
          TextField(
            controller: _inputAmountController,
            maxLength: 20,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
              prefixText: '\$ ',
              hintText: 'Enter Amout!',
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_inputTitleController.text);
                  print(_inputAmountController.text);
                },
                child: const Text('Save Text'),
              )
            ],
          )
        ],
      ),
    );
  }
}
