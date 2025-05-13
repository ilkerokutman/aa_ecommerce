class PaymentMethod {
  final int id;
  final String type;
  final String title;
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final bool isDefault;

  PaymentMethod({
    required this.id,
    required this.type,
    required this.title,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.isDefault,
  });

  PaymentMethod copyWith({
    int? id,
    String? type,
    String? title,
    String? cardNumber,
    String? cardHolder,
    String? expiryDate,
    bool? isDefault,
  }) {
    return PaymentMethod(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      cardNumber: cardNumber ?? this.cardNumber,
      cardHolder: cardHolder ?? this.cardHolder,
      expiryDate: expiryDate ?? this.expiryDate,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  factory PaymentMethod.fromMap(Map<String, dynamic> map) {
    return PaymentMethod(
      id: map['id']?.toInt() ?? 0,
      type: map['type'] ?? '',
      title: map['title'] ?? '',
      cardNumber: map['cardNumber'] ?? '',
      cardHolder: map['cardHolder'] ?? '',
      expiryDate: map['expiryDate'] ?? '',
      isDefault: map['isDefault'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'cardNumber': cardNumber,
      'cardHolder': cardHolder,
      'expiryDate': expiryDate,
      'isDefault': isDefault,
    };
  }
}
