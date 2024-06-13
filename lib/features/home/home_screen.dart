import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/color_styles.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';
import 'package:quotes_app/widgets/drawer.dart';
import 'package:quotes_app/widgets/homescreen/thought_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: AppTextStyle.bodyText.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/me.png"),

              // backgroundColor: ColorPalette.primaryColor,
              radius: 24,
            ),
            SizedBox(width: 16),
          ],
        ),
        drawer: const AppDrawer(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),
                  Text(
                    'Thought of the day',
                    style: AppTextStyle.sectionHeading
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16.h),
                  const ThoughtCard(
                    quote: 'Be yourself, everyone else is already taken',
                    author: '- Oscar Wilde',
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Popular Quotes',
                    style: AppTextStyle.sectionHeading
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        6,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Chip(
                            backgroundColor: index == 0
                                ? ColorPalette.primaryColor
                                : ColorPalette.secondaryBackground,
                            side: BorderSide(
                              color: index == 0
                                  ? ColorPalette.primaryColor
                                  : ColorPalette.secondaryBackground,
                            ),
                            label: Text(
                              'Chip $index',
                              style: AppTextStyle.bodyTextSmall.copyWith(
                                color: index == 0 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const ThoughtCard(
                    quote: 'Life is a journey, not a destination',
                    author: '- Ralph Waldo Emerson',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
