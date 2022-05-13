import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart';

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
                    // Armando la ruta completa
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListViewScreen(),
                    // );

                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, 'listview');

                    // Borrar la ruta anterior del historial
                    // Navigator.pushReplacementNamed(context, 'listview');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 40));
  }
}
