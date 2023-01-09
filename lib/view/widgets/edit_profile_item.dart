import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';

class EditProfileItem extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;

  const EditProfileItem(
      {super.key,
      required this.title,
      required this.hintText,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: lightGreyTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          TextFormField(
            style: whiteTextStyle,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: whiteTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
