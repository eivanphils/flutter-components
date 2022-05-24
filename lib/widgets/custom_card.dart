
import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Icon(icon, color: AppTheme.secondary),
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel', style: TextStyle(color: AppTheme.secondary))
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Confirm')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}