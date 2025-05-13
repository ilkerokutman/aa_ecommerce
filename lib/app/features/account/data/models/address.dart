class Address {
  final int id;
  final String title;
  final String fullAddress;
  final String postalCode;
  final String city;
  final String district;
  final bool isDefault;

  Address({
    required this.id,
    required this.title,
    required this.fullAddress,
    required this.postalCode,
    required this.city,
    required this.district,
    required this.isDefault,
  });

  Address copyWith({
    int? id,
    String? title,
    String? fullAddress,
    String? postalCode,
    String? city,
    String? district,
    bool? isDefault,
  }) {
    return Address(
      id: id ?? this.id,
      title: title ?? this.title,
      fullAddress: fullAddress ?? this.fullAddress,
      postalCode: postalCode ?? this.postalCode,
      city: city ?? this.city,
      district: district ?? this.district,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  //from map
  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      fullAddress: map['fullAddress'] ?? '',
      postalCode: map['postalCode'] ?? '',
      city: map['city'] ?? '',
      district: map['district'] ?? '',
      isDefault: map['isDefault'] ?? false,
    );
  }

  //to map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'fullAddress': fullAddress,
      'postalCode': postalCode,
      'city': city,
      'district': district,
      'isDefault': isDefault,
    };
  }
}
