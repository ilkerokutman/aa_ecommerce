import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAddressesScreen extends StatelessWidget {
  const MyAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (ac) {
        return Scaffold(
          appBar: AppBar(title: const Text('Adreslerim')),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading:
                    ac.profile!.addresses[index].isDefault
                        ? Icon(Icons.check)
                        : SizedBox(),
                title: Text(ac.profile?.addresses[index].title ?? ''),
                subtitle: Text(ac.profile?.addresses[index].fullAddress ?? ''),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    //TODO: edit this
                  },
                ),
              );
            },
            itemCount: ac.profile?.addresses.length ?? 0,
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Yeni Adres Ekle'),
            icon: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
