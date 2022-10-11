import 'package:flutter/material.dart';
import 'package:personal_expense_app/transaction.dart';
import 'package:intl/intl.dart';

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
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'Game Pad',
      amount: 30.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 49.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('CHART'),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const <Widget>[
                    TextField(
                      decoration: InputDecoration(label: Text('Title')),
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Amount')),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '\$${tx.amount}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          DateFormat('yMMMMd').format(tx.date),
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}


//https://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@github.com/Bolutife-6978/Personal-Expense-App.git
