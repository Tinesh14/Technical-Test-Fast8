import 'package:flutter/material.dart';

class ListFriendPage extends StatefulWidget {
  const ListFriendPage({super.key});

  @override
  State<ListFriendPage> createState() => _ListFriendPageState();
}

class _ListFriendPageState extends State<ListFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Friend')),
      body: const Center(child: Text('List Friend Page')),
    );
  }
}