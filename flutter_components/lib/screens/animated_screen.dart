import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  bool _isExpanded = false;
  late double _width;
  late double _height;
  late Color _color;

  @override
  void initState() {
    super.initState();
    _updateShape();
  }

  void _updateShape() {
    _width = Random().nextInt(300).toDouble() + 70;
    _height = Random().nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formas animadas'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
              _updateShape();
            });
          },
          child: AnimatedContainer(
            width: _isExpanded ? _width : _width,
            height: _isExpanded ? _height : _height,
            duration: const Duration(seconds: 1),
            curve: Curves.decelerate,
            decoration: BoxDecoration(
              color: _isExpanded ? _color : _color,
              borderRadius: BorderRadius.circular(_isExpanded ? 50 : 20),
            ),
            child: const Center(
              child: Text(
                'Haz Click Aquí!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
