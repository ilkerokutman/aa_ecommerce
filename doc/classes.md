### account_provider.dart
`AccountProvider`

methods: 
* Future<SigninResponse> performSignin(SinginRequest)
* Future<void> signOut()
* Future<SinginResponse> performRegister(RegisterRequest)
* Future<ResetPasswordResponse> performResetPassword(ResetPasswordRequest)
* Future<Profile> getProfile() 
* Future<List<Address>> getAddresses() 
* Future<List<PaymentMethod>> getPaymentMethods() 
* Future<void> addAddress(Address address) 
* Future<void> updateAddress(Address address) 
* Future<void> deleteAddress(String id) 
* Future<void> addPaymentMethod(PaymentMethod paymentMethod) 
* Future<void> updatePaymentMethod(PaymentMethod paymentMethod) 
* Future<void> deletePaymentMethod(String id) 
* Future<void> updateProfile(Profile profile) 

---

### account_controller.dart
`AccountController`

variables:
* Profile? profile
* List<Address>? addresses
* List<PaymentMethod>? paymentMethods
* ScreenStatus screenStatus = ScreenStatus.idle

methods:
* Future<void> signIn(String email, String password)
* Future<void> signOut()
* Future<void> register(String name, String email, String password)
* Future<void> resetPassword(String email)
* Future<void> getProfile()
* Future<void> getAddresses()
* Future<void> getPaymentMethods()
* Future<void> addAddress(Address address)
* Future<void> updateAddress(Address address)
* Future<void> deleteAddress(String id)
* Future<void> addPaymentMethod(PaymentMethod paymentMethod)
* Future<void> updatePaymentMethod(PaymentMethod paymentMethod)
* Future<void> deletePaymentMethod(String id)
* Future<void> updateProfile(Profile profile)

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

### product_provider.dart
`ProductProvider`

methods:
* Future<List<Product>> getProducts()
* Future<List<Category>> getCategories()
* Future<Product> getProductById(String id)
* Future<List<ProductReview>> getProductReviews(String productId)
* Future<void> addProductReview(ProductReview review)
* Future<void> updateProductReview(ProductReview review)
* Future<void> deleteProductReview(String id)
* Future<List<Order>> getOrders()
* Future<List<OrderItem>> getOrderItems(String orderId)
* Future<Order> createOrder(Order order)
* Future<OrderItem> addOrderItem(OrderItem item)
* Future<OrderItem> updateOrderItem(OrderItem item)
* Future<void> deleteOrderItem(String id)
* Future<Order> updateOrder(Order order)
* Future<void> deleteOrder(String id)

---

### content_controller.dart
`ContentController`

variables:
* List<Content>? contents
* Content? selectedContent
* ScreenStatus screenStatus = ScreenStatus.idle

methods:
* Future<void> getContents()
* Future<void> getContentById(String id)
* Future<void> getContentByTitle(String title)

---

### content_provider.dart
`ContentProvider`

methods:
* Future<List<Content>> getContents()
* Future<Content> getContentById(String id)
* Future<Content> getContentByTitle(String title)

---

### payment_method.dart
constructor: `PaymentMethod`

variables:
* int id
* String type
* String title
* String cardNumber
* String cardHolder
* String expiryDate
* bool isDefault

methods: 
* PaymentMethod fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* PaymentMethod copyWith()

---

### address.dart
constructor: `Address`

variables:
* int id
* String title
* String fullAddress
* String postalCode
* String city
* String district
* bool isDefault

methods:
* Address fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* Address copyWith()

---

### profile.dart
constructor: `Profile`

variables:
* int id
* String name
* String email
* String phone
* String avatar
* String memberSince
* List<Address> addresses
* List<PaymentMethod> paymentMethods
* List<int> favorites
* List<int> recentlyViewed
* Map<String, bool> notifications

methods:
* Profile fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* Profile copyWith()

---

### product.dart
constructor: `Product`

variables:
* int id
* String title
* String description
* String code
* List<String> images
* double price
* double? salePrice
* int categoryId
* List<ProductReview> comments

methods:
* Product fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* Product copyWith()
* double getDisplayPrice()
* bool hasDiscount()
* double getDiscountPercentage()

---

### category.dart
constructor: `Category`

variables:
* int id
* String name
* String icon

methods:
* Category fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* Category copyWith()

---

### product_review.dart
constructor: `ProductReview`

variables:
* int id
* String userName
* String text
* double rating
* String date

methods:
* ProductReview fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* ProductReview copyWith()

---

### order.dart
constructor: `Order`

variables:
* String id
* String userId
* String? paymentMethodId
* String? addressId
* String createdAt
* String updatedAt
* double totalAmount
* OrderStatus status

methods:
* Order fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* Order copyWith()

---

### order_item.dart
constructor: `OrderItem`

variables:
* String id
* String orderId
* String productId
* int quantity
* double price
* String createdAt
* String updatedAt

methods:
* OrderItem fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* OrderItem copyWith()
* double getTotalPrice()

---

### content.dart
constructor: `Content`

variables:
* String id
* String title
* String body
* String createdAt
* String updatedAt

methods:
* Content fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* Content copyWith()

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

### colors.dart
`UiColors`

```dart
class UiColors {
    static const Color primary = Color(0xFF3F51B5);
    static const Color secondary = Color(0xFFFF9800);
    static const Color accent = Color(0xFF009688);
    static const Color background = Color(0xFFF5F5F5);
    static const Color surface = Color(0xFFFFFFFF);
    static const Color error = Color(0xFFB00020);
    static const Color onPrimary = Color(0xFFFFFFFF);
    static const Color onSecondary = Color(0xFF000000);
    static const Color onBackground = Color(0xFF000000);
    static const Color onSurface = Color(0xFF000000);
    static const Color onError = Color(0xFFFFFFFF);
}
```

use case example:
```dart
Container(
    color: UiColors.primary,
    child: Text(
        'Hello',
        style: TextStyle(
            color: UiColors.onPrimary,
        ),
    ),
)
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

---

### api_response.dart
constructor: `ApiResponse<T>`

variables:
* int statusCode
* bool success
* T? data
* String? message
* List<String>? errors

methods:
* ApiResponse<T> fromMap(Map<String, dynamic> map, T Function(Map<String, dynamic>) fromJson)
* Map<String, dynamic> toMap([Map<String, dynamic> Function(T)? toJson])
* bool get hasError => !success || statusCode >= 400
* bool get hasData => data != null
* bool get hasMessage => message != null && message!.isNotEmpty
* bool get hasErrors => errors != null && errors!.isNotEmpty

use case example:
```dart
// Creating a typed response
ApiResponse<Profile> profileResponse = ApiResponse<Profile>.fromMap(
  jsonMap,
  (map) => Profile.fromMap(map),
);

// Checking response status
if (profileResponse.hasError) {
  // Handle error
  if (profileResponse.hasMessage) {
    print(profileResponse.message);
  }
  if (profileResponse.hasErrors) {
    profileResponse.errors!.forEach(print);
  }
} else {
  // Access data
  if (profileResponse.hasData) {
    final profile = profileResponse.data!;
    // Use profile data
  }
}
```

---

### onboarding.dart
constructor: `OnboardingItem`

variables:
* int id
* String title
* String description
* String imageUrl
* String backgroundColor

methods:
* OnboardingItem fromMap(Map<String, dynamic> map)
* Map<String, dynamic> toMap()
* OnboardingItem copyWith()
* Color getBackgroundColor() // Converts the hex string to a Color object

---

### onboarding_controller.dart
`OnboardingController`

variables:
* List<OnboardingItem>? onboardingItems
* int currentIndex = 0
* ScreenStatus screenStatus = ScreenStatus.idle

methods:
* Future<void> getOnboardingItems()
* void nextPage()
* void previousPage()
* void goToPage(int index)
* bool isLastPage()
* bool isFirstPage()
* void completeOnboarding()
* bool hasCompletedOnboarding()

---

### onboarding_provider.dart
`OnboardingProvider`

methods:
* Future<List<OnboardingItem>> getOnboardingItems()
* Future<void> setOnboardingCompleted(bool completed)
* Future<bool> hasCompletedOnboarding()

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
    