class Article {
  final String author;
  final String title;
  final String description;
  final String content;
  final String imgUrl;
  final String date;

  const Article({
    required this.author,
    required this.title,
    required this.description,
    required this.content,
    required this.imgUrl,
    required this.date,
  });

  factory Article.fromJson(Map<String, dynamic> data) {
    return Article(
      author: data['author'] ?? "Unkown author",
      title: data['title'],
      description: data['description'] ?? "No description available",
      content: data['content'] ?? "No content available",
      imgUrl: data['urlToImage'] ??
          "https://i.pinimg.com/originals/c2/49/eb/c249ebfc67e89ad7655f6fc50821e9c1.jpg",
      date: data['publishedAt'] ?? "Unknown date",
    );
  }
}
