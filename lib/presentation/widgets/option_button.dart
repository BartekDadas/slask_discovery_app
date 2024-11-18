
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    required this.text,
    required this.isCurrentFilter,
    super.key
  });

  final String text;
  final bool isCurrentFilter;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: const  WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            backgroundColor: WidgetStatePropertyAll(isCurrentFilter? Colors.purple.shade300 : Colors.white),
        ),
        onPressed: () {},
        child: Text(
            text,
            style: TextStyle(
              color: isCurrentFilter? Colors.white : Colors.black,
            ),
        ),
    );
  }
}
