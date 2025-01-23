class Book {
  final String title;
  final String author;
  final double price;
  final String imageUrl;
  final String description;

  Book({
    required this.title,
    required this.author,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  // Factory method to create a Book from JSON
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      author: json['author'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      description: json['description'],
    );
  }
}
