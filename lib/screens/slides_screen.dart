import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class SlidesScreen extends StatefulWidget {
  const SlidesScreen({Key? key}) : super(key: key);

  @override
  State<SlidesScreen> createState() => _SlidesScreenState();
}

class _SlidesScreenState extends State<SlidesScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slides & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 500,
              value: _sliderValue,
              thumbColor: AppTheme.primary,
              activeColor: AppTheme.primary,
              inactiveColor: AppTheme.primary.withOpacity(0.3),
              onChanged: (double value) {
                print(value);
                _sliderValue = value;
                setState(() {});
              },
            ),
      
            Image(
              image: NetworkImage('https://www.pngmart.com/files/3/Uchiha-Sasuke-PNG-Picture.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
      
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
