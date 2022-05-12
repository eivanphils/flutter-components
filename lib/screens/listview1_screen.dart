import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView1'),
      ),
      body: ListView(
        children: const [
          Text('List 1'),
          Text('List 1'),
          Text('List 1'),
          Text('List 1'),
        ],
      )
    );
  }
}