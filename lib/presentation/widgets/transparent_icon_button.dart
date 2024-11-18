import 'package:flutter/material.dart';

class TransparentIconButton extends StatelessWidget {
  const TransparentIconButton({
    required this.isTransparent,
    required this.iconData,
    this.color = Colors.blue,
    this.hasBorder = false,
    this.margin,
    super.key
  });

  final bool isTransparent;
  final IconData iconData;
  final Color color;
  final bool hasBorder;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: hasBorder? Border.all(
            color: Colors.white,
            width: 2,
          ) : null
        ),
        margin: margin,
        padding: const EdgeInsets.all(0.5),
        child: IconButton(
          icon: Icon(
            iconData,
            size: 28,
            color: isTransparent? color :  Colors.white,),
          onPressed: () {},
        ),
    );
  }
}
