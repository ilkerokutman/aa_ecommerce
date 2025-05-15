import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/models/category.dart';
import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:aa_ecommerce/app/features/products/screens/widgets/product_favorite_button_widget.dart';
import 'package:aa_ecommerce/app/features/products/screens/widgets/product_image_widget.dart';
import 'package:aa_ecommerce/app/features/shared/components/bottom_bar.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  Category? selectedCategory;
  final ProductController productController = Get.find();
  late final TextEditingController searchController;
  String? keyword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController =
        TextEditingController()..addListener(() {
          setState(() {
            keyword = searchController.text;
          });
        });
    final args = Get.arguments?['selectedCategory'];
    final categoryId = args?.id;
    selectedCategory = productController.categories.firstWhereOrNull(
      (e) => e.id == categoryId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return GetBuilder<ProductController>(
          builder: (pc) {
            List<Product> productList = pc.products;
            if (selectedCategory != null && selectedCategory!.id != 0) {
              productList =
                  pc.products
                      .where(
                        (element) => element.categoryId == selectedCategory!.id,
                      )
                      .toList();
            }

            if (keyword != null && keyword!.isNotEmpty) {
              productList =
                  productList
                      .where(
                        (e) =>
                            e.title.toLowerCase().contains(
                              keyword!.toLowerCase(),
                            ) ||
                            e.description.toLowerCase().contains(
                              keyword!.toLowerCase(),
                            ),
                      )
                      .toList();
            }

            final categoryList = [
              Category(id: 0, name: 'Tüm Kategoriler', icon: ''),
              ...pc.categories,
            ];

            return Scaffold(
              appBar: AppBar(title: Text('Ürünler')),
              body: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Aramak için yazın...',
                              prefixIcon: Icon(Icons.search),
                              suffixIcon:
                                  keyword != null && keyword!.isNotEmpty
                                      ? IconButton(
                                        icon: Icon(Icons.clear),
                                        onPressed:
                                            keyword != null &&
                                                    keyword!.isNotEmpty
                                                ? () {
                                                  searchController.clear();
                                                  setState(() {});
                                                }
                                                : null,
                                      )
                                      : null,
                            ),
                          ),
                        ),
                        Expanded(
                          child: DropdownMenu<Category>(
                            initialSelection:
                                selectedCategory ?? categoryList.first,

                            onSelected: (value) {
                              setState(() {
                                selectedCategory = value;
                              });
                            },
                            dropdownMenuEntries:
                                categoryList
                                    .map(
                                      (e) => DropdownMenuEntry(
                                        value: e,
                                        label: e.name,
                                      ),
                                    )
                                    .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child:
                        productList.isEmpty
                            ? Center(child: Text('Ürün bulunamadı'))
                            : GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 3 / 4,
                                  ),
                              itemBuilder: (context, index) {
                                final Product product = productList[index];
                                bool isFavorite =
                                    ac.profile?.favorites.contains(
                                      product.id,
                                    ) ??
                                    false;

                                return InkWell(
                                  borderRadius: BorderRadius.circular(16),
                                  onTap: () {
                                    Get.toNamed(
                                      Routes.productDetail,
                                      arguments: {'productId': product.id},
                                    );
                                  },
                                  child: GridTile(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      margin: EdgeInsets.all(8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Stack(
                                          children: [
                                            ProductImageWidget(
                                              product: product,
                                            ),
                                            // urun adi
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 4,
                                                ),
                                                color: Colors.white.withValues(
                                                  alpha: 0.7,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Text(
                                                      product.title,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '${product.price.toStringAsFixed(0)}₺',
                                                          style: TextStyle(
                                                            decoration:
                                                                product.salePrice !=
                                                                        null
                                                                    ? TextDecoration
                                                                        .lineThrough
                                                                    : TextDecoration
                                                                        .none,
                                                          ),
                                                        ),
                                                        if (product.salePrice !=
                                                            null)
                                                          Text(
                                                            '${product.salePrice!.toStringAsFixed(0)}₺',
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            // fiyat
                                            // favori butonu
                                            ProductFavoriteButtonWidget(
                                              isFavorite: isFavorite,
                                              product: product,
                                              callback: () {
                                                // favori ekleme/silme
                                                ac.toggleFavorite(product.id);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: productList.length,
                            ),
                  ),
                ],
              ),
              bottomNavigationBar: BottomBarWidget(currentIndex: 3),
            );
          },
        );
      },
    );
  }
}
