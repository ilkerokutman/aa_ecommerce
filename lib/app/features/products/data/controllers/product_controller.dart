import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:aa_ecommerce/app/features/products/data/providers/product_provider.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print('ProductController initialized');
  }

  @override
  void onReady() {
    print('ProductController ready');

    fetchProducts();
    super.onReady();
  }

  @override
  void onClose() {
    print('ProductController closed');
    super.onClose();
  }

  final RxBool _didFetchedProducts = false.obs;
  bool get didFetchedProducts => _didFetchedProducts.value;

  final RxList<Product> _products = <Product>[].obs;
  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    final response = await ProductProvider.fetchProducts();
    if (response.success) {
      _products.assignAll(response.data as List<Product>);
    } else {
      _products.clear();
    }
    _didFetchedProducts.value = true;
    update();
  }
}
