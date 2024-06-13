import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/color_styles.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: ColorPalette.primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quotes App',
                  style: AppTextStyle.bodyText.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'v1.0.0',
                  style: AppTextStyle.bodyText.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Personal Details',
                style: AppTextStyle.bodyText.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )),
          ),
          ListTile(
            title: const Text('User Name'),
            subtitle: const Text('Aakash Rajbanshi'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Email'),
            subtitle: const Text('aakash@gmail.com'),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Settings',
                style: AppTextStyle.bodyText.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )),
          ),
          ListTile(
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
            onTap: () {},
          ),
          // language
          ListTile(
            title: const Text('Language'),
            subtitle: const Text('English'),
            onTap: () {},
          ),
          //About App

          ListTile(
            title: const Text('About App'),
            onTap: () {},
          ),
          // About Developer
          ListTile(
            title: const Text('About Developer'),
            onTap: () {},
          ),

          ListTile(
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
