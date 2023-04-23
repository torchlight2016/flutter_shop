import 'package:flutter/widgets.dart';

class WSpace extends StatelessWidget {
  final double width;

  const WSpace(this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
