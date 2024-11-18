import 'package:flutter/material.dart';
import 'package:slask_exercise/presentation/widgets/custom_container.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      color: Colors.blue,
      height: 200,
      text: 'Szlaki',
    );
  }
}
