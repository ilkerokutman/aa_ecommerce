import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final ProductController productController = Get.find();
  late final PageController pageController;

  late Product product;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
    final productId = Get.arguments?['productId'];
    if (productId == null) {
      Future.delayed(Duration.zero, () {
        Get.offAllNamed(Routes.home);
      });
      return;
    }
    setState(() {
      product = productController.products.firstWhere((e) => e.id == productId);
    });
    //TODO: bu urunu kullanicinin son goruntulenenler dizisine ekle.
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return Scaffold(
          appBar: AppBar(
            title: Text(product.title),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color:
                      ac.profile!.favorites.contains(product.id)
                          ? Colors.red
                          : Colors.grey,
                ),
                onPressed: () {
                  ac.toggleFavorite(product.id);
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: 1.7,
                  child: SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageController,
                          children:
                              product.images
                                  .map(
                                    (e) => InkWell(
                                      onTap: () {
                                        //TODO: urun galeri sayfasina git
                                      },
                                      child: Image.network(
                                        e,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            iconSize: 48,
                            onPressed: () {
                              pageController.previousPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                              );
                            },
                            icon: Icon(Icons.chevron_left, color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            iconSize: 48,
                            onPressed: () {
                              pageController.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                              );
                            },
                            icon: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 10,
                    children: [
                      Opacity(
                        opacity: product.salePrice == null ? 1 : 0.5,
                        child: Text(
                          '${product.price.toStringAsFixed(0)}₺',
                          style: TextStyle(
                            fontSize: 20,
                            decoration:
                                product.salePrice != null
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                          ),
                        ),
                      ),
                      if (product.salePrice != null)
                        Text(
                          '${product.salePrice!.toStringAsFixed(0)}₺',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          productController.addToBasket(product.id);
                          Get.toNamed(Routes.basket);
                        },
                        child: Text('Sepete Ekle'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(product.description),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Kullanıcı yorumları',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:
                      (context, index) => ListTile(
                        title: Text(product.comments[index].userName),
                        subtitle:
                            product.comments[index].text != null
                                ? Text(product.comments[index].text!)
                                : null,
                        trailing: Text(
                          product.comments[index].rating.toString(),
                        ),
                      ),
                  itemCount: product.comments.length,
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
