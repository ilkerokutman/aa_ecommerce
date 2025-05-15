import 'package:aa_ecommerce/app/core/constants/enums.dart';
import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:get/get.dart';

class Order {
  final int id;
  final int userId;
  final int? paymentMethodId;
  final int? addressId;
  final String createdAt;
  final String updatedAt;
  final double totalAmount;
  final OrderStatus status;

  Order({
    required this.id,
    required this.userId,
    required this.paymentMethodId,
    required this.addressId,
    required this.createdAt,
    required this.updatedAt,
    required this.totalAmount,
    required this.status,
  });

  Order copyWith({
    int? id,
    int? userId,
    int? paymentMethodId,
    int? addressId,
    String? createdAt,
    String? updatedAt,
    double? totalAmount,
    OrderStatus? status,
  }) {
    return Order(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      paymentMethodId: paymentMethodId ?? this.paymentMethodId,
      addressId: addressId ?? this.addressId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      totalAmount: totalAmount ?? this.totalAmount,
      status: status ?? this.status,
    );
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id']?.toInt() ?? 0,
      userId: map['userId']?.toInt() ?? 0,
      paymentMethodId: map['paymentMethodId']?.toInt(),
      addressId: map['addressId']?.toInt(),
      createdAt: map['createdAt']?.toString() ?? '',
      updatedAt: map['updatedAt']?.toString() ?? '',
      totalAmount: map['totalAmount']?.toDouble() ?? 0,
      status: OrderStatus.values.firstWhere((e) => e.name == map['status']),
    );
  }

  factory Order.empty() {
    final AccountController ac = Get.find();
    return Order(
      id: -1,
      userId: ac.profile!.user.id,
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
      totalAmount: 0,
      paymentMethodId: null,
      addressId: null,
      status: OrderStatus.basket,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'paymentMethodId': paymentMethodId,
      'addressId': addressId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'totalAmount': totalAmount,
      'status': status.name,
    };
  }
}
