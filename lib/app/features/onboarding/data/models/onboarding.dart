class OnboardingDefinition {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String backgroundColor;

  OnboardingDefinition({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.backgroundColor,
  });

  factory OnboardingDefinition.fromMap(Map<String, dynamic> json) {
    return OnboardingDefinition(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      backgroundColor: json['backgroundColor'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'backgroundColor': backgroundColor,
    };
  }

  OnboardingDefinition copyWith({
    int? id,
    String? title,
    String? description,
    String? imageUrl,
    String? backgroundColor,
  }) {
    return OnboardingDefinition(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
