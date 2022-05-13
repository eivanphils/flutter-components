import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Megaman', 'Pokemon', 'Digimon', 'Dragon Ball Z'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.access_time_filled, color: Colors.indigo),
                title: Text(options[index]),
                trailing: const Icon(Icons.ac_unit_rounded, color: Colors.red),
                onTap: () => print('tab $index'),
              );
            },
            separatorBuilder: (_, __) => const Divider()));
  }
}
