import 'package:aa_ecommerce/app/features/onboarding/data/middlewares/onboarding_middleware.dart';
import 'package:aa_ecommerce/app/features/onboarding/screens/onboarding_screen.dart';
import 'package:aa_ecommerce/app/features/onboarding/screens/splash_screen.dart';
import 'package:aa_ecommerce/app/features/products/middlewares/home_middleware.dart';
import 'package:aa_ecommerce/app/features/products/screens/home_screen.dart';
import 'package:aa_ecommerce/app/features/products/screens/splash_screen.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:get/get.dart';

final List<GetPage> getPages = [
  GetPage(
    name: Routes.home,
    page: () => HomeScreen(),
    middlewares: [HomeMiddleware()],
  ),
  GetPage(name: Routes.fetchProducts, page: () => ProductListSplashScreen()),

  ///
  GetPage(
    name: Routes.onboarding,
    page: () => OnboardingScreen(),
    middlewares: [OnboardingMiddleware()],
  ),
  GetPage(
    name: Routes.fetchOnboardingData,
    page: () => FetchOnboardingDataSplashScreen(),
  ),

  
];
