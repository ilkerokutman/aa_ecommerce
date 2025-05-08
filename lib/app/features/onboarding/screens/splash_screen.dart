import 'package:aa_ecommerce/app/features/onboarding/data/controllers/onboarding_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FetchOnboardingDataSplashScreen extends StatefulWidget {
  const FetchOnboardingDataSplashScreen({super.key});

  @override
  State<FetchOnboardingDataSplashScreen> createState() =>
      _FetchOnboardingDataSplashScreenState();
}

class _FetchOnboardingDataSplashScreenState
    extends State<FetchOnboardingDataSplashScreen> {
  int retryCount = 0;
  @override
  void initState() {
    super.initState();
    runInitTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            retryCount <= 3
                ? CircularProgressIndicator()
                : ElevatedButton(onPressed: runInitTasks, child: Text('Retry')),
      ),
    );
  }

  Future<void> runInitTasks() async {
    final OnboardingController ob = Get.find();

    if (!ob.didFetchedData) {
      await ob.fetchOnboardingData();
      if (mounted) {
        setState(() => retryCount++);
      }
      if (retryCount < 3) {
        runInitTasks();
      }
    } else {
      Future.delayed(Duration.zero, () => Get.offAllNamed(Routes.onboarding));
    }
  }
}
