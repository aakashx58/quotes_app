import 'package:flutter/material.dart';

abstract class AppTextStyle {
  // bodyText Text Style
  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 18px
    fontFamily: 'Poppins',
  );
  // sectionHeading Text Style
  static const TextStyle sectionHeading = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w500, // medium
    height: 1.5, // 34.5px
    fontFamily: 'Montserrat',
  );
  // quoteHeading Text Style
  static const TextStyle quoteHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 34.5px
    fontFamily: 'Poppins',
  );
  // bodyTextSmall Text Style
  static const TextStyle bodyTextSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 21px
    fontFamily: 'Poppins',
  );

  static const ingridDarlingGray = TextStyle(
    color: Colors.white,
    fontSize: 60,
    fontWeight: FontWeight.w400,
    fontFamily: 'Ingrid Darling',
  );
}
