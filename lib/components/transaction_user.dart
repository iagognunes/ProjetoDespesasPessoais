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
      title: 'Conta de Luz',
      value: 83.95,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}
