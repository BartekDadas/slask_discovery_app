import 'package:flutter/material.dart';

import 'custom_container.dart';

class GreenContainer extends StatelessWidget {
  const GreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        height: 100,
        text: 'Zaplanuj podróź',
        color: Colors.greenAccent,
        textColor: Colors.black
    );
  }
}