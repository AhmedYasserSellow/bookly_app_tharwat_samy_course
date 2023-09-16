class BookModel {
  final String imageUrl;
  final String title;
  final String author;
  final String price;
  final double rate;
  final int voters;
  BookModel({
    required this.author,
    required this.imageUrl,
    required this.price,
    required this.rate,
    required this.title,
    required this.voters,
  });
}
