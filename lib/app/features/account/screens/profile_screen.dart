import 'package:aa_ecommerce/app/core/utils/dialog_utils.dart';
import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/account/screens/widget/profile_image.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profil'),
            actions: [
              IconButton(
                onPressed: () {
                  DialogUtils.showDialog(
                    context: context,
                    title: 'Oturumu Kapat',
                    message: Text('Çıkış yapmak istediğinize emin misiniz?'),
                    onConfirm: () {
                      ac.signOut();
                    },
                    confirmText: 'Oturumu Kapat',
                    dismissible: false,
                  );
                },
                icon: Icon(Icons.logout),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileImageWidget(data: ac.profile?.user.avatar ?? ''),
                ListTile(title: Text(ac.profile?.user.name ?? '')),
                ListTile(title: Text(ac.profile?.user.email ?? '')),
                ListTile(title: Text(ac.profile?.user.phone ?? '')),
                ListTile(title: Text(ac.profile?.user.memberSince ?? '')),
                Divider(),
                ListTile(
                  title: Text('Adreslerim'),
                  onTap: () {
                    Get.toNamed(Routes.myAddresses);
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Ödeme Yöntemlerim'),
                  onTap: () {
                    Get.toNamed(Routes.myPaymentMethods);
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Favorilerim'),
                  onTap: () {
                    Get.toNamed(Routes.myFavorites);
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Son Görüntülenenler'),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(),
                ListTile(
                  title: Text('Hakkımızda'),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('İletişim'),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Gizlilik Politikası'),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Kullanıcı Sözleşmesi'),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Sıkça Sorulan Sorular'),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
