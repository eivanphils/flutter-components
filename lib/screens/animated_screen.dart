import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = AppTheme.primaryColor;
  BorderRadiusGeometry _boderRadius = BorderRadius.circular(10);


  void onChangeStyle() {
    Random random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1
    );
    _boderRadius = BorderRadius.circular(random.nextInt(50).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Widget'),
      ),
      body: Center(
        child: Container(
          child: const Icon(Icons.animation, color: Colors.white,),
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _boderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: onChangeStyle,
          child: const Icon(
            Icons.play_circle_outlined,
            size: 40,
          )),
    );
  }
}
