import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview': (BuildContext context) => const ListViewScreen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: ((context) => const AlertScreen())
    );
  }
}
