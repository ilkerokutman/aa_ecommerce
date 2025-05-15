import 'package:aa_ecommerce/app/features/account/screens/my_addresses_screen.dart';
import 'package:aa_ecommerce/app/features/account/screens/my_favorites_screen.dart';
import 'package:aa_ecommerce/app/features/account/screens/my_payment_methods_screen.dart';
import 'package:aa_ecommerce/app/features/account/screens/profile_screen.dart';
import 'package:aa_ecommerce/app/features/account/screens/singin_screen.dart';
import 'package:aa_ecommerce/app/features/account/screens/splash_screen.dart';
import 'package:aa_ecommerce/app/features/onboarding/data/middlewares/onboarding_middleware.dart';
import 'package:aa_ecommerce/app/features/onboarding/screens/onboarding_screen.dart';
import 'package:aa_ecommerce/app/features/onboarding/screens/splash_screen.dart';
import 'package:aa_ecommerce/app/features/products/middlewares/home_middleware.dart';
import 'package:aa_ecommerce/app/features/products/screens/basket_screen.dart';
import 'package:aa_ecommerce/app/features/products/screens/category_screen.dart';
import 'package:aa_ecommerce/app/features/products/screens/home_screen.dart';
import 'package:aa_ecommerce/app/features/products/screens/product_detail_screen.dart';
import 'package:aa_ecommerce/app/features/products/screens/product_list_screen.dart';
import 'package:aa_ecommerce/app/features/products/screens/splash_screen.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:get/get.dart';

final List<GetPage> getPages = [
  /// MARK: PRODUCT
  GetPage(
    name: Routes.home,
    page: () => HomeScreen(),
    middlewares: [HomeMiddleware()],
  ),
  GetPage(name: Routes.fetchProducts, page: () => ProductListSplashScreen()),
  GetPage(name: Routes.categories, page: () => CategoryScreen()),
  GetPage(name: Routes.productList, page: () => ProductListScreen()),
  GetPage(name: Routes.productDetail, page: () => ProductDetailScreen()),
  GetPage(name: Routes.basket, page: () => BasketScreen()),

  /// MARK: ONBOARDING
  GetPage(
    name: Routes.onboarding,
    page: () => OnboardingScreen(),
    middlewares: [OnboardingMiddleware()],
  ),
  GetPage(
    name: Routes.fetchOnboardingData,
    page: () => FetchOnboardingDataSplashScreen(),
  ),

  /// MARK: ACCOUNT
  GetPage(name: Routes.signIn, page: () => SinginScreen()),
  GetPage(name: Routes.fetchProfile, page: () => FetchProfileSplashScreen()),
  GetPage(name: Routes.profile, page: () => ProfileScreen()),
  GetPage(name: Routes.myAddresses, page: () => MyAddressesScreen()),
  GetPage(name: Routes.myPaymentMethods, page: () => MyPaymentMethodsScreen()),
  GetPage(name: Routes.myFavorites, page: () => MyFavoritesScreen()),
];
