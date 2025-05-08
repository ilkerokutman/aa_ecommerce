import 'package:aa_ecommerce/app/features/products/data/models/product_review.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final String code;
  final List<String> images;
  final double price;
  final double? salePrice;
  final int categoryId;
  final List<ProductReview> comments;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.code,
    required this.images,
    required this.price,
    this.salePrice,
    required this.categoryId,
    required this.comments,
  });

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      code: json['code'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      price: json['price'] ?? 0.0,
      salePrice: json['salePrice'],
      categoryId: json['categoryId'] ?? 0,
      comments: List<ProductReview>.from(
        json['comments']?.map((x) => ProductReview.fromMap(x)) ?? [],
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'code': code,
      'images': images,
      'price': price,
      'salePrice': salePrice,
      'categoryId': categoryId,
      'comments': comments.map((x) => x.toMap()).toList(),
    };
  }

  Product copyWith({
    int? id,
    String? title,
    String? description,
    String? code,
    List<String>? images,
    double? price,
    double? salePrice,
    int? categoryId,
    List<ProductReview>? comments,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      code: code ?? this.code,
      images: images ?? this.images,
      price: price ?? this.price,
      salePrice: salePrice ?? this.salePrice,
      categoryId: categoryId ?? this.categoryId,
      comments: comments ?? this.comments,
    );
  }
}
