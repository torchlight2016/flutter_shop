import 'package:flutter/material.dart';

const kakaoApiKey = '';

enum ColorSeed {
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  red('Red', Colors.red),
  pink('Pink', Colors.pink),
  white('White', Colors.white);

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}
