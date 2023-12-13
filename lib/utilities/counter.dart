import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  const CounterDesign({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterDesign();
  }
}

class _CounterDesign extends State<CounterDesign> {
  int _n = 0;
  double _amt = 0;
  void add() {
    setState(() {
      _n++;
      _amt = _amt + 17.32;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
      _amt = _amt - 17.32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 170.0,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.zero,
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                ),
                onPressed: () {
                  add();
                },
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text('$_n', style: const TextStyle(fontSize: 30.0)),
              const SizedBox(
                width: 10.0,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
                onPressed: () {
                  minus();
                },
              ),
              const SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 60.0,
        ),
        Text(
                  'Pesos ${_amt.toStringAsFixed(2)}',
                  style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
                  ),
                ),
      ],
    );
  }
}