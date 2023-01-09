import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/shoes.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Football',
                    style: lightGreyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Predator 20.3 Firm Ground',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$68,47',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
