import 'package:aa_ecommerce/app/core/constants/enums.dart';
import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/models/category.dart';
import 'package:aa_ecommerce/app/features/products/data/models/order.dart';
import 'package:aa_ecommerce/app/features/products/data/models/order_item.dart';
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
    fetchCategories();
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

  final RxList<Category> _categories = <Category>[].obs;
  List<Category> get categories => _categories;

  Future<void> fetchCategories() async {
    final response = await ProductProvider.fetchCategories();
    if (response.success) {
      _categories.assignAll(response.data as List<Category>);
    } else {
      _categories.clear();
    }
    update();
  }

  //#region MARK: Order
  final Rxn<Order> _currentOrder = Rxn();
  Order? get currentOrder => _currentOrder.value;

  final RxList<OrderItem> _currentOrderItems = <OrderItem>[].obs;
  List<OrderItem> get currentOrderItems => _currentOrderItems;

  double get currentOrderSum {
    double amount = 0;
    for (var element in currentOrderItems) {
      amount += element.price * element.quantity;
    }
    return amount;
  }

  void removeBasket() {
    _currentOrder.value = null;
    _currentOrderItems.clear();
    update();
  }

  void addToBasket(int productId) {
    final product = products.firstWhere((e) => e.id == productId);
    if (currentOrder == null) {
      _currentOrder.value = Order.empty();
      update();
    }
    final orderItem = OrderItem(
      id: -1,
      orderId: currentOrder!.id,
      productId: product.id,
      price: product.price,
      quantity: 1,
    );
    _currentOrderItems.add(orderItem);
    update();
  }

  //#endregion
}
