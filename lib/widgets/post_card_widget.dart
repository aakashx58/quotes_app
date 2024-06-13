// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';
import 'package:quotes_app/widgets/homescreen/thought_card.dart';

class PostCardWidget extends StatelessWidget {
  final String userAvator;
  final String userName;
  final String postTime;
  final String postLocation;
  final String postQuote;
  final String postAuthor;
  final int postLike;
  final int postComment;
  final int postFavorite;

  const PostCardWidget({
    required this.userAvator,
    required this.userName,
    required this.postTime,
    required this.postLocation,
    required this.postQuote,
    required this.postAuthor,
    required this.postLike,
    required this.postComment,
    required this.postFavorite,
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
                  const CircleAvatar(),
                  SizedBox(
                    width: 8.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName),
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
          height: 16.h,
        ),
        ThoughtCard(
          quote: postQuote,
          author: postAuthor,
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Text('$postLike likes'),
            const Spacer(),
            Text('$postComment comments'),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        const Row(
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.grey,
                ),
                Text(' Like'),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.messenger_outline,
                  size: 20,
                  color: Colors.grey,
                ),
                Text(' Comment'),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.bookmark_outline,
                  size: 20,
                  color: Colors.grey,
                ),
                Text(' Favorite'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade200,
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
