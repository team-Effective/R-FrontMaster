import 'package:dg_master/model/counter.dart';
import 'package:flutter/material.dart';

class CounterController {
  const CounterController(Counter counter) : _counter = counter;

  final Counter _counter;

  void countUp() => _counter.increment();

  void addToList(BuildContext context) {
    _counter.append();
    final total = _counter.calculateTotal();
    if (_counter.isTotalMultipleOfFive()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('合計値 ($total) は 5 の倍数です！'),
        ),
      );
    }
  }

  void clear() => _counter.clear();
}