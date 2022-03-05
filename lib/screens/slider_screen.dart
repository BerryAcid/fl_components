import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.colorPrimary,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          CheckboxListTile(
              activeColor: AppTheme.colorPrimary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value ?? true;
                  })),
          SwitchListTile.adaptive(
              activeColor: AppTheme.colorPrimary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value;
                  })),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FadeInImage(
                    placeholder:
                        const AssetImage('assets/images/jar-loading.gif'),
                    fadeInDuration: const Duration(milliseconds: 300),
                    image: const NetworkImage(
                        'https://w7.pngwing.com/pngs/791/718/png-transparent-batman-superman-diana-prince-dc-animated-universe-drawing-batman-comics-heroes-superhero.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
