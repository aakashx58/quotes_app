import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/color_styles.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';
import 'package:quotes_app/widgets/custom_elevated_button.dart';
import 'package:quotes_app/widgets/custom_image_view.dart';
import 'package:quotes_app/widgets/custom_outlined_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 28.w,
            right: 28.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: 'assets/images/login_image.png',
                height: 250.h,
                width: 250.w,
              ),
              SizedBox(height: 24.h),
              const Text(
                'Welcome to Quotes App, Login to share your thoughts and like others\' thoughts',
                style: AppTextStyle.bodyTextSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                text: "Login with Google",
                onPressed: () {},
                margin: EdgeInsets.only(left: 12.h),
                buttonStyle: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: ColorPalette.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              CustomOutlinedButton(
                onPressed: () {},
                text: "Login with Facebook",
                margin: EdgeInsets.only(left: 12.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 2.w,
                    color: ColorPalette.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              CustomOutlinedButton(
                text: "Login with Twitter",
                onPressed: () {},
                margin: EdgeInsets.only(left: 12.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 2.w,
                    color: ColorPalette.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}
