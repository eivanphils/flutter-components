import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewScreen extends StatelessWidget {
  final options = const ['Megaman', 'Pokemon', 'Digimon', 'Dragon Ball Z'];

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1'),
        ),
        body: ListView(
          children: [
            ...options.map(
              (option) => ListTile(
                leading: const Icon(Icons.access_time_filled, color: AppTheme.primary,),
                title: Text(option),
                trailing: const Icon(Icons.ac_unit_rounded, color: AppTheme.primary2),
              )
            ).toList()
          ],
        ));
  }
}
