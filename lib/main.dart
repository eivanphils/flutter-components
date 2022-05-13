import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListView2Screen(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'listview': (BuildContext context) => const ListViewScreen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
        'card': (BuildContext context) => const CardScreen(),
        'alert': (BuildContext context) => const AlertScreen(),
      },
    );
  }
}