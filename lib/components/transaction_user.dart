import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactioUser extends StatefulWidget {
  @override
  _TransactioUserState createState() => _TransactioUserState();
}

class _TransactioUserState extends State<TransactioUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 699.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta de Luz 01',
      value: 83.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta de Luz 02',
      value: 83.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta de Luz 03',
      value: 83.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta de Luz 04',
      value: 83.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta de Luz 05',
      value: 83.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta de Luz 06',
      value: 83.95,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
