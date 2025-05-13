import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavoritesScreen extends StatelessWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return GetBuilder<ProductController>(
          builder: (pc) {
            return Scaffold(
              appBar: AppBar(title: Text('Favorilerim')),
              body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  final Product? product = pc.products.firstWhereOrNull(
                    (e) => e.id == ac.profile?.favorites[index],
                  );
                  return GridTile(
                    child:
                        product == null
                            ? Container()
                            : Card(
                              child: Stack(
                                children: [
                                  Container(
                                    constraints: BoxConstraints.expand(),
                                    child: Image.network(
                                      product.images.first,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(product.title),
                                  ),
                                ],
                              ),
                            ),
                  );
                },
                itemCount: ac.profile?.favorites.length ?? 0,
              ),
            );
          },
        );
      },
    );
  }
}
