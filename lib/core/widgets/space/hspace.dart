import 'package:flutter/widgets.dart';

class HSpace extends StatelessWidget {
  final double height;

  const HSpace(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
