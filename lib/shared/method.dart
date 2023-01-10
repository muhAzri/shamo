import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';

showSnackbar(context, bool isWishlist) {
  snackbar() {
    if (isWishlist) {
      return SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: priceColor,
        content: const Text(
          'Has been added to the Whitelist',
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: alertColor,
        content: const Text(
          'Has been removed from the Whitelist',
          textAlign: TextAlign.center,
        ),
      );
    }
  }

  return ScaffoldMessenger.of(context).showSnackBar(
    snackbar(),
  );
}
