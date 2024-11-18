import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {required this.color,
      required this.text,
      required this.height,
      this.textColor = Colors.white,
      super.key});

  final Color color;
  final String text;
  final double height;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 10),
      constraints: const BoxConstraints(
        minWidth: 100,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
