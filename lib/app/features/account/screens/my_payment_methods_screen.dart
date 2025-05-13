import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPaymentMethodsScreen extends StatelessWidget {
  const MyPaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return Scaffold(
          appBar: AppBar(title: const Text('Ödeme Yöntemlerim')),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading:
                    ac.profile!.paymentMethods[index].isDefault
                        ? Icon(Icons.check)
                        : SizedBox(),
                title: Text(ac.profile?.paymentMethods[index].title ?? ''),
                subtitle: Text(
                  ac.profile?.paymentMethods[index].cardNumber ?? '',
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    //TODO: edit this
                  },
                ),
              );
            },
            itemCount: ac.profile?.paymentMethods.length ?? 0,
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Yeni Ödeme Yöntemi Ekle'),
            icon: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
