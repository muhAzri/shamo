import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';
import 'package:shamo/view/widgets/buttons.dart';
import 'package:shamo/view/widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 2),
            Text('Register and Happy Shoping', style: greyTextStyle)
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            const CustomFormField(
              title: 'Full Name',
              icon: 'assets/icons/name.png',
            ),
            const CustomFormField(
              title: 'Username',
              icon: 'assets/icons/username.png',
            ),
            const CustomFormField(
              title: 'Email Address',
              icon: 'assets/icons/email.png',
            ),
            const CustomFormField(
              title: 'Your Password',
              icon: 'assets/icons/password.png',
              isObsecure: true,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              title: 'Sign Up',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              body(),
              const Spacer(),
              CustomTextButton(
                text1: 'Already have an account? ',
                text2: 'Sign In',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
