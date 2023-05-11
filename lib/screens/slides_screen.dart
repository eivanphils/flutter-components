import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class SlidesScreen extends StatefulWidget {
  const SlidesScreen({Key? key}) : super(key: key);

  @override
  State<SlidesScreen> createState() => _SlidesScreenState();
}

class _SlidesScreenState extends State<SlidesScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slides & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 1000,
            value: _sliderValue,
            thumbColor: AppTheme.primary,
            activeColor: AppTheme.primary,
            inactiveColor: AppTheme.primary.withOpacity(0.3),
            onChanged: _sliderEnabled
            ? (double value) {
                _sliderValue = value;
                setState(() {});
              }
            : null,
          ),
          Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),
          CheckboxListTile(
            title: Text(
              _sliderEnabled ? 'Desactivar CheckboxListTile' : 'Activar CheckboxListTile',
              style: const TextStyle(color: Colors.white)
            ),
            tileColor: AppTheme.secondary.withOpacity(0.9),
            checkColor: AppTheme.primary,
            activeColor: Colors.white,
            controlAffinity: ListTileControlAffinity.leading,
            secondary: const Icon(Icons.person, color: Colors.white),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),

          Switch(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }
          ),

          SwitchListTile.adaptive(
            title: Text(
              _sliderEnabled ? 'Desactivar CheckboxListTile' : 'Activar CheckboxListTile'
            ),
            controlAffinity: ListTileControlAffinity.platform,
            secondary: const Icon(Icons.person),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://c.wallhere.com/photos/83/3b/Star_Wars_Rogue_One_A_Star_Wars_Story_Darth_Vader_Jyn_Erso_Felicity_Jones_portrait_display-6468.png!d'),
                fit: BoxFit.contain,
                height: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
