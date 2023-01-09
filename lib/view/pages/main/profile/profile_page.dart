import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';
import 'package:shamo/view/widgets/profile_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/profile.png',
                    width: 64,
                    height: 64,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Alex',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@alexkeinn',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/icons/exit.png',
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          decoration: BoxDecoration(color: backgroundColor3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileItem(
                text: 'Edit Profile',
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
              ),
              ProfileItem(
                text: 'Your Orders',
                onTap: () {},
              ),
              ProfileItem(
                text: 'Help',
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'General',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileItem(
                text: 'Privacy & Policy',
                onTap: () {},
              ),
              ProfileItem(
                text: 'Term of Service',
                onTap: () {},
              ),
              ProfileItem(
                text: 'Rate App',
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
