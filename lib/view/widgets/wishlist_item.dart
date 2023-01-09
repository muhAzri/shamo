import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';
import 'package:shamo/view/widgets/buttons.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/shoes.png',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
                const SizedBox(height: 2),
                Text(
                  '\$143,98',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(width: 53),
          WishlistButton(
            width: 34,
            height: 34,
            iconWidth: 12,
            iconHeight: 10,
            isActive: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
