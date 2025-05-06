### account_provider.dart
`AccountProvider`

methods: 
* Future<SigninResponse> performSignin(SinginRequest)
* Future<void> signOut()
* Future<SinginResponse> performRegister(RegisterRequest)
* Future<ResetPasswordResponse> performResetPassword(ResetPasswordRequest)
* - Future<Profile> getProfile() 
* - Future<List<Address>> getAddresses() 
* - Future<List<PaymentMethod>> getPaymentMethods() 
* - Future<void> addAddress(Address address) 
* - Future<void> updateAddress(Address address) 
* - Future<void> deleteAddress(String id) 
* - Future<void> addPaymentMethod(PaymentMethod paymentMethod) 
* - Future<void> updatePaymentMethod(PaymentMethod paymentMethod) 
* - Future<void> deletePaymentMethod(String id) 
* - Future<void> updateProfile(Profile profile) 

---

### product_controller.dart
`ProductController`

variables: 
* List<Product> products
* List<Category> categories
* Product? selectedProduct
* List<ProductReview>? selectedProductReviews
* Order? currentOrder
* List<OrderItem>? currentOrderItems
* List<Order> orders
* List<OrderItem> orderItems

methods: 
* Future<void> getProducts()
* Future<void> getCategories()
* Future<void> getProductReviews(String productId)
* Future<void> getSelectedProduct(String productId)
* Future<void> addProductReview(ProductReview productReview)
* Future<void> updateProductReview(ProductReview productReview)
* Future<void> deleteProductReview(String id)
* Future<void> getOrders()
* Future<void> getOrderItems()
* createNewOrder()
* addOrderItem(OrderItem orderItem)
* updateOrderItem(OrderItem orderItem)
* deleteOrderItem(String id)
* updateOrder(Order order)
* deleteOrder(String id)

---

### payment_method.dart
constructor: `PaymentMethod`

variables:
* String id
* String userId
* String name
* String cardNumber
* String cardHolderName
* String cardExpirationDate
* String cardCvv
* String createdAt
* String updatedAt
* bool isDefault

methods: 
* PaymentMethod fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* PaymentMethod copyWith()

---

### app_button.dart
`AppButtonWidget`
parameters: 
* String title
* IconData? icon
* VoidCallback onPressed
* ButtonType type // primary, secondary, text, outlined, 
* ButtonSize size // small, medium, large
* bool isDisabled
returns: Widget

---

### strings.dart
`UiStrings`
example:
```dart
class UiStrings {
    static const String appName = 'A.A E-Commerce';
    static const String ok = 'Tamam';
    static const String cancel = 'Iptal';
    static const String signIn = 'Giriş Yap';
    static const String signUp = 'Kayıt Ol';
    static const String resetPassword = 'Şifre Sıfırla';
    static const String profile = 'Profil';
    static const String myAddresses = 'Adreslerim';
    static const String myPaymentMethods = 'Ödeme Yöntemlerim';
    static const String myOrders = 'Siparişlerim';
    static const String myFavorites = 'Favorilerim';
    static const String myReviews = 'Yorumlarım';
    static const String basket = 'Sepet';
    static const String checkout = 'Ödeme';
    static const String orderResult = 'Sipariş Sonucu';
    static const String content = 'İçerik';
    static const String aboutUs = 'Hakkımızda';
    static const String contactUs = 'İletişim';
    static const String faq = 'SSS';
    static const String help = 'Yardım';
    static const String privacyPolicy = 'Gizlilik Politikası';
    static const String termsAndConditions = 'Kullanım Şartları';
}
```

use case example:
```dart
Text(UiStrings.signIn);
```
---

### assets.dart
```dart
class UiAssets {
    static const String logo = 'assets/images/logo.png';
    static const String splash = 'assets/images/splash.png';
}
```

use case example:
```dart
Image.asset(UiAssets.logo);
```

---

### dimens.dart
```dart
class UiDimens {
    static const EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 16);
    static const BorderRadius borderRadius = BorderRadius.circular(16);
    static const double iconSize = 24;
}
```

use case example:
```dart
Container(
    padding: UiDimens.screenPadding,
    decoration: BoxDecoration(
        borderRadius: UiDimens.borderRadius,
    ),
    child: Icon(
        Icons.add,
        size: UiDimens.iconSize,
    ),
)
```

---

### enums.dart
```dart
enum OrderStatus {
    basket, 
    pending, 
    inProgress, 
    completed, 
    paymentFailed, 
    cancelled, 
    deleted, 
    packed, 
    shipped, 
    delivered, 
}

enum ScreenStatus {
    idle,
    loading,
    success,
    empty,
    error,
}
```

use case example:
```dart
OrderStatus status = OrderStatus.basket;
```

---

### keys.dart
```dart
class UiKeys {
    static const String selectedLanguage = 'selectedLanguage';
}   
```

use case example:
```dart
final selectedLanguage = LocalStorageService.getString(UiKeys.selectedLanguage);
```

---

### dialog_utils.dart 
```dart
`DialogUtils`
methods:
* showConfirmDialog(context, title, message, onConfirm, onCancel, confirmText, cancelText)
* showLoadingDialog(context)
* showSuccessDialog(context, title, message)
* showErrorDialog(context, title, message)
* showAlertDialog(context, title, message, onConfirm, confirmText)
```
    