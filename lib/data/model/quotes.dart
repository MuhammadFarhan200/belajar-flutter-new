class Quotes {
  final int id;
  final String title;
  final String content;

  Quotes({required this.id, required this.title, required this.content});

  factory Quotes.fromJson(Map<String, dynamic> json) {
    return Quotes(
      id: json['ID'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }
}