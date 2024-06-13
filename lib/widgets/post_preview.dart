// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';
import 'package:quotes_app/widgets/homescreen/thought_card.dart';

class PostPreviewWidget extends StatelessWidget {
  final String userAvator;
  final String userName;
  final String postTime;
  final String postLocation;
  final String postQuote;
  final String postAuthor;

  const PostPreviewWidget({
    required this.userAvator,
    required this.userName,
    required this.postTime,
    required this.postLocation,
    required this.postQuote,
    required this.postAuthor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.h,
                  ),
                  SizedBox(
                    width: 8.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: AppTextStyle.bodyTextSmall.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            postTime,
                            style: AppTextStyle.bodyTextSmall
                                .copyWith(fontSize: 9.sp),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            margin: const EdgeInsets.only(
                              top: 4,
                              bottom: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            postLocation,
                            style: AppTextStyle.bodyTextSmall
                                .copyWith(fontSize: 9.sp),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        ThoughtCard(
          quote: postQuote,
          author: postAuthor,
          height: 200,
        ),
      ],
    );
  }
}
