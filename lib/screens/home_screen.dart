import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.analytics),
          title: const Text('Mi componente'),
          onTap: () {
            print('click $index');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 40
      )
    );
  }
}