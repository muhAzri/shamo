import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isSender,
    this.hasProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230,
        decoration: BoxDecoration(
          color: isSender ? backgroundColor5 : backgroundColor4,
          borderRadius: BorderRadius.only(
            topRight: !isSender
                ? const Radius.circular(12)
                : const Radius.circular(0),
            topLeft:
                isSender ? const Radius.circular(12) : const Radius.circular(0),
            bottomLeft: const Radius.circular(12),
            bottomRight: const Radius.circular(12),
          ),
        ),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/shoes.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: whiteTextStyle,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: purpleTextStyle,
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Buy Now',
                    style: blackTextStyle.copyWith(
                      color: backgroundColor5,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : const SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: isSender ? backgroundColor5 : backgroundColor4,
                    borderRadius: BorderRadius.only(
                      topRight: !isSender
                          ? const Radius.circular(12)
                          : const Radius.circular(0),
                      topLeft: isSender
                          ? const Radius.circular(12)
                          : const Radius.circular(0),
                      bottomLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    text,
                    style: whiteTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
