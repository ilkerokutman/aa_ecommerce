import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: data.isEmpty ? Container() : Image.network(data),
      ),
    );
  }
}
