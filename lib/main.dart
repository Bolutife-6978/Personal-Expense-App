import 'package:flutter/material.dart';
import 'package:personal_expense_app/widgets/user_transaction.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  // late String amountInput;
  // late String titleInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('CHART'),
            ),
            UserTransaction(),
          ],
        ));
  }
}


//https://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@github.com/Bolutife-6978/Personal-Expense-App.git
//https://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@github.com/Bolutife-6978/Personal-Expense-App.git