import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogUtils {
  static void showDialog({
    required BuildContext context,
    String? title,
    required Widget message,
    GestureTapCallback? onConfirm,
    GestureTapCallback? onCancel,
    String? confirmText,
    String? cancelText,
    bool dismissible = true,
  }) {
    Get.defaultDialog(
      title: title ?? 'Dikkat',
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: message,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
            onCancel?.call();
          },
          child: Text(cancelText ?? 'İptal'),
        ),
        TextButton(
          onPressed: () {
            Get.back();
            onConfirm?.call();
          },
          child: Text(confirmText ?? 'Tamam'),
        ),
      ],
      titlePadding: const EdgeInsets.all(20),
    );
  }
}
