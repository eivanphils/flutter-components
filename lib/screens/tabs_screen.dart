import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
   
  const TabsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.folder)),
              Tab(icon: Icon(Icons.meeting_room)),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab person'),),
            Center(child: Text('Tab folder'),),
            Center(child: Text('Tab meeting_room'),),
          ],
        ),
      ) 
    );
  }
}