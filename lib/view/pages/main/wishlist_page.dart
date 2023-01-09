import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';
import 'package:shamo/view/widgets/wishlist_item.dart';

import '../../widgets/buttons.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: AppBar(
          title: const Text('Favorite Shoes'),
        ),
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/love.png',
                width: 74,
              ),
              const SizedBox(height: 20),
              Text(
                ' You don\'t have dream shoes??',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Let\'s find your favorite shoes',
                style: lightGreyTextStyle,
              ),
              const SizedBox(height: 20),
              CustomButton(
                title: 'Explore Store',
                width: 152,
                height: 44,
                onPressed: () {},
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const WishlistItem(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
