import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/color_styles.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';
import 'package:quotes_app/widgets/custom_elevated_button.dart';
import 'package:quotes_app/widgets/custom_textfield.dart';
import 'package:quotes_app/widgets/post_preview.dart';

class CreatePostScreen extends StatelessWidget {
  CreatePostScreen({super.key});

  final _quoteCotroller = TextEditingController();
  final _authorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Post your own thoughts'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                controller: _quoteCotroller,
                hintText: 'Write your quote here...',
                maxLines: null,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _authorController,
                hintText: 'Who quoted it first?',
              ),
              SizedBox(height: 24.h),
              Text(
                'Post Preview',
                style: AppTextStyle.quoteHeading.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              PostPreviewWidget(
                userAvator: 'assets/images/avator.png',
                userName: 'Aakash Rajbanshi',
                postTime: '2 hours ago',
                postLocation: 'Kathmandu, Nepal',
                postQuote: _quoteCotroller.text,
                postAuthor: _authorController.text,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30.h,
                              width: 30.h,
                              color: index == 3
                                  ? ColorPalette.primaryColor
                                  : index == 2
                                      ? Colors.black
                                      : index == 1
                                          ? Colors.purple
                                          : Colors.blue,
                            ),
                          ))),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                text: "Share",
                buttonTextStyle: AppTextStyle.bodyText.copyWith(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
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
            ],
          ),
        ));
  }
}
