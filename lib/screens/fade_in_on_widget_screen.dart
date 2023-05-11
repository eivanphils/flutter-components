import 'package:flutter/material.dart';

class FadeInOnWidgetScreen extends StatefulWidget {
  const FadeInOnWidgetScreen({Key? key}) : super(key: key);

  @override
  State<FadeInOnWidgetScreen> createState() => _FadeInOnWidgetScreenState();
}

class _FadeInOnWidgetScreenState extends State<FadeInOnWidgetScreen> {
  bool _visible = true;
  double _opacity = 1.0;

  void onChageOpacity() {
    _visible = !_visible;
    _opacity = _visible ? 1.0 : 0.0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fade In On Widget'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 1),
          curve: Curves.ease,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => onChageOpacity(),
          backgroundColor: _visible ? Colors.red : Colors.purple,
          tooltip: _visible ? 'ocultar' : 'mostrar',
          child: Icon(_visible ? Icons.hide_image : Icons.image)),
    );
  }
}
