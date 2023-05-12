import 'package:flutter/material.dart';

import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // Ocultado homeScreen para que no aparezca en el home
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview', name: 'Listview tipo 1', screen: const ListViewScreen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'card', name: 'Tarjetas - Card', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.person),
    MenuOption(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
    MenuOption(route: 'inputs', name: 'Inputs - Forms', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slides', name: 'Slides & Checks', screen: const SlidesScreen(), icon: Icons.check),
    MenuOption(route: 'list-view-builder', name: 'ListViewBuilder', screen: const ListViewBuilderScreen(), icon: Icons.list_alt),
    MenuOption(route: 'fade-in-on-widget', name: 'FadeInOnWidget', screen: const FadeInOnWidgetScreen(), icon: Icons.widgets),
    MenuOption(route: 'physics-simulation', name: 'PhysicsSimulation', screen: const PhysicsSimulationScreen(), icon: Icons.animation)
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview': (BuildContext context) => const ListViewScreen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen
      });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => const AlertScreen()));
  }
}
