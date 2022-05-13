import 'package:flutter/material.dart';

class MenuOption {
  final String name;
  final String route;
  final Widget screen;
  final IconData icon;

  MenuOption({
    required this.route,
    required this.name,
    required this.screen,
    required this.icon
  });
}
