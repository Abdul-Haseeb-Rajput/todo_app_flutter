import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustBotton extends StatelessWidget {
  Color? color;
  final String text;
  VoidCallback onPressed;
  Function(int)? saveEditTask;
  CustBotton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.saveEditTask,
      required child,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      child: Text(text),
    );
  }
}
