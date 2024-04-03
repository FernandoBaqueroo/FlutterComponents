import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  late double _sliderValue; // Ahora es late para inicializarlo en initState
  bool _sliderEnabled = true; // Estado para habilitar/deshabilitar el slider

  @override
  void initState() {
    super.initState();
    _sliderValue = 50.0; // Se inicializa el valor del slider
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valor del slider: ${_sliderValue.toInt()}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Habilitar Slider'),
                Switch(
                  value: _sliderEnabled,
                  onChanged: (value) {
                    setState(() {
                      _sliderEnabled = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                setState(() {
                  _sliderEnabled = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: _sliderEnabled
                  ? (newValue) {
                      setState(() {
                        _sliderValue = newValue;
                      });
                    }
                  : null, // Deshabilita el slider si _sliderEnabled es false
              activeColor: Colors.blue,
              inactiveColor: Colors.grey[300],
              divisions: 10,
              label: '${_sliderValue.toInt()}',
            ),
          ],
        ),
      ),
    );
  }
}
