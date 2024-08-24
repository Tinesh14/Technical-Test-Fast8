import 'package:flutter/material.dart';

class ListTransactionPage extends StatefulWidget {
  const ListTransactionPage({super.key});

  @override
  State<ListTransactionPage> createState() => _ListTransactionPageState();
}

class _ListTransactionPageState extends State<ListTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Transaction')),
      body: const Center(child: Text('List Transaction Page')),
    );
  }
}
