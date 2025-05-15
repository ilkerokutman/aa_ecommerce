class Category {
  final int id;
  final String name;
  final String icon;

  Category({required this.id, required this.name, required this.icon});

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    id: json['id']?.toInt() ?? 0,
    name: json['name'] ?? '',
    icon: json['icon'] ?? '',
  );

  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'icon': icon};

  Category copyWith({int? id, String? name, String? icon}) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }
}
