import 'package:flutter/material.dart';

class UiOrientationScreen extends StatelessWidget {
  const UiOrientationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI Orientation'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OrientationBuilder(

                builder: (BuildContext context, Orientation orientation) {
              return GridView.count(
                crossAxisCount: orientation == Orientation.portrait ? 3 : 6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(102, (index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.redAccent[100],
                      child: const FlutterLogo(),
                    ),
                  );
                }),
              );
            })));
  }
}
