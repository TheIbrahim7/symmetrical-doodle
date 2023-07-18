import 'package:flutter/material.dart';

class OrderedQuantity extends StatefulWidget {
  const OrderedQuantity({super.key});

  @override
  State<OrderedQuantity> createState() => _OrderedQuantityState();
}

class _OrderedQuantityState extends State<OrderedQuantity> {
  int orders = 1;

  void _increaseOrders() {
    setState(() {
      orders++;
    });
  }

  void _decreaseOrders() {
    if (orders <= 1) {
      return;
    }
    setState(() {
      orders--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      IconButton(
        onPressed: _decreaseOrders,
        icon: const Icon(Icons.remove_circle),
      ),
      Text(
        orders.toString(),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      IconButton(
        onPressed: _increaseOrders,
        icon: const Icon(
          Icons.add_circle,
          color: Colors.green,
          size: 28,
        ),
      ),
    ]);
  }
}
