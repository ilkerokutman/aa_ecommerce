import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FetchProfileSplashScreen extends StatefulWidget {
  const FetchProfileSplashScreen({super.key});

  @override
  State<FetchProfileSplashScreen> createState() =>
      _FetchProfileSplashScreenState();
}

class _FetchProfileSplashScreenState extends State<FetchProfileSplashScreen> {
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
    final AccountController accountController = Get.find();
    setState(() {
      retryCount++;
    });

    if (retryCount > 4) {
      Get.offAllNamed(Routes.signIn);
    } else {
      if (accountController.profile == null) {
        await accountController.fetchProfile();
      }

      if (accountController.profile != null) {
        Future.delayed(Duration.zero, () {
          Get.offAllNamed(Routes.home);
        });
      } else {
        Future.delayed(Duration(milliseconds: 300), () {
          runInitTasks();
        });
      }
    }
  }
}
