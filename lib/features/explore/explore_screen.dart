// ignore_for_file: unused_element, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';
import 'package:quotes_app/widgets/custom_image_view.dart';
import 'package:quotes_app/widgets/drawer.dart';
import 'package:quotes_app/widgets/post_card_widget.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  String radioGroup = "";

  String youAnd10Others = "";

  List<String> radioList = ["lbl_100", "lbl_comments", "lbl_favorite"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore',
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.sp),
        child: const Column(
          children: [
            PostCardWidget(
              userAvator: "assets/images/me.png",
              userName: "Aakash Rajbanshi",
              postTime: "1 hour ago",
              postLocation: "Kathmandu,Nepal",
              postQuote:
                  "Life may be hard, but whats the fun without challenges ?",
              postAuthor: "Aakash Rajbanshi",
              postLike: 100,
              postComment: 10,
              postFavorite: 10,
            ),
            PostCardWidget(
              userAvator: "assets/images/me.png",
              userName: "Aakash Rajbanshi",
              postTime: "Just Now",
              postLocation: "Kathmandu,Nepal",
              postQuote: "Travelling is the best way to learn new things",
              postAuthor: "Aakash Rajbanshi",
              postLike: 100,
              postComment: 10,
              postFavorite: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildFrameRow1(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 7.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomImageView(
            //   imagePath: ImageConstant.imgGroup4,
            //   height: 45.adaptSize,
            //   width: 45.adaptSize,
            // ),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/me.png"),

              // backgroundColor: ColorPalette.primaryColor,
              radius: 24,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 4,
                bottom: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Aakash Rajbanshi",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 2),
                  SizedBox(
                    width: 184.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "1 hour ago",
                        ),
                        Container(
                          height: 4,
                          width: 4,
                          margin: const EdgeInsets.only(
                            top: 4,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        const Text(
                          "Kathmandu,Nepal",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomImageView(
          height: 14,
          width: 1.h,
          margin: const EdgeInsets.symmetric(vertical: 15),
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildThirtyNineColumn(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 2.h),
    padding: EdgeInsets.symmetric(
      horizontal: 58.h,
      vertical: 104,
    ),
    // decoration: AppDecoration.fillRed.copyWith(
    //   borderRadius: BorderRadiusStyle.roundedBorder8,
    // ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 5),
        SizedBox(
          width: 281.h,
          child: const Text(
            "Life may be hard, but whats the fun\nwithout challenges ?",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildFrameRow2(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 2.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // CustomImageView(
        //   imagePath: ImageConstant.imgFlatColorIconsLike,
        //   height: 24.adaptSize,
        //   width: 24.adaptSize,
        // ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 3,
            bottom: 2,
          ),
          child: const Text(
            "100",
          ),
        ),
        const Spacer(
          flex: 50,
        ),
        // CustomRadioButton(
        //   text: "Comments",
        //   value: "Comments",
        //   groupValue: radioGroup,
        //   padding: EdgeInsets.symmetric(vertical: 2 ),
        //   onChange: (value) {
        //     radioGroup = value;
        //   },
        // ),
        const Spacer(
          flex: 50,
        ),
        SizedBox(
          width: 90.h,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // CustomImageView(
              //   imagePath: ImageConstant.imgPhStarBold,
              //   height: 24.adaptSize,
              //   width: 24.adaptSize,
              // ),
              Padding(
                padding: EdgeInsets.only(
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "Favorite",
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildSinglePostColumn(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CustomImageView(
                //   imagePath: ImageConstant.imgGroup4,
                //   height: 45.adaptSize,
                //   width: 45.adaptSize,
                // ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4,
                    bottom: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Aakash Rajbanshi",
                            ),
                            TextSpan(
                              text: "#1",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        width: 184.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "1 hour ago",
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 4,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  2.h,
                                ),
                              ),
                            ),
                            const Text(
                              "Kathmandu,Nepal",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // CustomImageView(
            //   imagePath: ImageConstant.imgVector,
            //   height: 14 ,
            //   width: 1.h,
            //   margin: EdgeInsets.symmetric(vertical: 15 ),
            // ),
          ],
        ),
      ),
      const SizedBox(height: 17),
      const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Day 14 Photos",
        ),
      ),
      const SizedBox(height: 13),
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 58.h,
          vertical: 104,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            SizedBox(
              width: 281.h,
              child: const Text(
                "Life may be hard, but whats the fun\nwithout challenges ?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 15),
      Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: _buildFrameRow(
          context,
          userAndOthersText: "You and 10 Others",
          commentsCounterText: "10 Comments",
        ),
      ),
      const SizedBox(height: 14),
      const Row(
        children: [
          // CustomRadioButton(
          //   text: "100",
          //   value: radioList[0],
          //   groupValue: youAnd10Others,
          //   padding: EdgeInsets.symmetric(vertical: 2 ),
          //   onChange: (value) {
          //     youAnd10Others = value;
          //   },
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 70.h),
          //   child: CustomRadioButton(
          //     text: "Comments",
          //     value: radioList[1],
          //     groupValue: youAnd10Others,
          //     padding: EdgeInsets.symmetric(vertical: 2 ),
          //     onChange: (value) {
          //       youAnd10Others = value;
          //     },
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 70.h),
          //   child: CustomRadioButton(
          //     text: "Favorite",
          //     value: radioList[2],
          //     groupValue: youAnd10Others,
          //     padding: EdgeInsets.symmetric(vertical: 2 ),
          //     onChange: (value) {
          //       youAnd10Others = value;
          //     },
          //   ),
          // ),
        ],
      ),
    ],
  );
}

/// Common widget
Widget _buildFrameRow(
  BuildContext context, {
  required String userAndOthersText,
  required String commentsCounterText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        userAndOthersText,
      ),
      Text(
        commentsCounterText,
      ),
    ],
  );
}
