import 'package:flutter/material.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.maxLines,
  });
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.bodyTextSmall,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
