import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3, color: Colors.black)),
                padding: const EdgeInsets.all(10),
                child: Text('\$${tx.amount.toStringAsFixed(2)}'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(DateFormat().format(tx.date))
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
