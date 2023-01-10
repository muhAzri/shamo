import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';
import 'package:shamo/view/widgets/buttons.dart';
import 'package:shamo/view/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              _buildHeader(),
              _buildBody(context),
              const Spacer(),
              CustomTextButton(
                text1: 'Don\'t have an account? ',
                text2: 'Sign up',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/sign-up',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 2),
          Text('Sign In to Countinue', style: greyTextStyle)
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: [
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
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
