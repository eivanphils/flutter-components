import 'package:flutter/material.dart';

import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    // Armando la ruta completa
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListViewScreen(),
                    // );

                    // Navigator.push(context, route);

                    Navigator.pushNamed(
                        context, menuOptions[index].route);

                    // Borrar la ruta anterior del historial
                    // Navigator.pushReplacementNamed(context, 'listview');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
