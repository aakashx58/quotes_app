import 'package:flutter/material.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';

class ThoughtCard extends StatelessWidget {
  final String quote;
  final String author;
  final double? height;
  const ThoughtCard({
    super.key,
    required this.quote,
    required this.author,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 401,
      height: height ?? 306,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5C5C5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Center(
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 380,
                  child: Text(quote,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.quoteHeading.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Text(
                  author,
                  style: AppTextStyle.bodyTextSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
