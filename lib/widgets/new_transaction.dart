import 'package:flutter/material.dart';
import 'package:personal_expense_app/widgets/user_transaction.dart';

// ignore: use_key_in_widget_constructors
class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  // ignore: use_key_in_widget_constructors
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(label: Text('Title')),
            ),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(label: Text('Amount')),
            ),
            TextButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
              child: const Text('Add Transactios'),
            )
          ],
        ),
      ),
    );
  }
}
