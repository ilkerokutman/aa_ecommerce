import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SinginScreen extends StatelessWidget {
  const SinginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                SizedBox(height: 50),
                Text('Sign In'),
                TextField(
                  controller: ac.emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Eposta',
                  ),
                ),
                TextField(
                  controller: ac.passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final response = await ac.signIn();
                    if (response.success) {
                      Get.offAllNamed(Routes.home);
                    } else {
                      // mesaj goster
                      Get.snackbar(
                        'Hata',
                        response.message ?? 'Bir hata oluştu',
                      );
                    }
                  },
                  child: Text('Giriş Yap'),
                ),
                Divider(),
                TextButton(onPressed: () {}, child: Text('Kayıt Ol')),
                TextButton(onPressed: () {}, child: Text('Şifremi Unuttum')),
                Text('Deneme: ${ac.signinRequest.toMap()}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
