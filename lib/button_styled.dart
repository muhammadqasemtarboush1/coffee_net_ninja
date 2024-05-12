import 'package:flutter/material.dart';

class ButtonStyled extends StatelessWidget {
  const ButtonStyled({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: onPressed,
        child: child);
  }
}
