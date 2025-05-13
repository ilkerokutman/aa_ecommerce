class AppUser {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String avatar;
  final String memberSince;

  AppUser({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.memberSince,
  });

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      avatar: map['avatar'] ?? '',
      memberSince: map['memberSince'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'avatar': avatar,
      'memberSince': memberSince,
    };
  }

  copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? avatar,
    String? memberSince,
  }) {
    return AppUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      avatar: avatar ?? this.avatar,
      memberSince: memberSince ?? this.memberSince,
    );
  }
}
