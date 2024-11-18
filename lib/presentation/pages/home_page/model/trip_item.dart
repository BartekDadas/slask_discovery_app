
class TripItem {
  final String title;
  final String imageUrl;
  final bool isFavorite;
  TripItem({
    required this.title,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
