import 'package:flutter/material.dart';
import 'package:slask_exercise/presentation/widgets/transparent_icon_button.dart';

class RecommendationTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool isFavorite;

  const RecommendationTile({
    required this.title,
    required this.imagePath,
    required this.isFavorite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 150,
                ),
                child:Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  overflow: TextOverflow.clip,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child:
              TransparentIconButton(
                  isTransparent: isFavorite,
                  hasBorder: isFavorite,
                  color: Colors.green,
                  margin: const EdgeInsets.only(top:4, right: 4),
                  iconData: isFavorite? Icons.favorite : Icons.favorite_outline ,
              ),
            )
          ],
        ),
      ),
    );
  }
}