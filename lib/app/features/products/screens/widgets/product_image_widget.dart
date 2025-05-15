import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Image.network(
        product.images.first,
        fit: BoxFit.cover,
      ),
    );
  }
}
