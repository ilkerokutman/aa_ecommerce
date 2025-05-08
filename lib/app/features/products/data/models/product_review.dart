class ProductReview {
  final int id;
  final String userName;
  final String? text;
  final double? rating;
  final String date;

  ProductReview({
    required this.id,
    required this.userName,
    this.text,
    this.rating,
    required this.date,
  });

  factory ProductReview.fromMap(Map<String, dynamic> json) {
    return ProductReview(
      id: json['id'] ?? 0,
      userName: json['userName'] ?? '',
      text: json['text'],
      rating: json['rating']?.toDouble(),
      date: json['date'] ?? DateTime.now().toIso8601String(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userName': userName,
      'text': text,
      'rating': rating,
      'date': date,
    };
  }

  ProductReview copyWith({
    int? id,
    String? userName,
    String? text,
    double? rating,
    String? date,
  }) {
    return ProductReview(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      text: text ?? this.text,
      rating: rating ?? this.rating,
      date: date ?? this.date,
    );
  }
}
