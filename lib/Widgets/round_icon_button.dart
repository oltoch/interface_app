import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function onPress;

  RoundIconButton(
      {required this.onPress,
      required this.child,
      this.color = const Color(0xff292E35)});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      elevation: 3,
      constraints: BoxConstraints.tightFor(
        width: 60,
        height: 60,
      ),
      shape: CircleBorder(),
      fillColor: color,
      child: child,
    );
  }
}
