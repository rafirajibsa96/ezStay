import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 12.0;

Color ePrimaryColor = const Color(0xff4E82EA);
Color eBlackColor = const Color(0xff2A2B3D);
Color eGreyColor = const Color(0xffB7B7B7);
Color eGreyBorderColor = const Color(0xffF1F1F1);
Color eWhiteColor = const Color(0xffFFFFFF);
Color eRedColor = const Color(0xffF2735B);
Color eWhiteBackgroundColor = const Color(0xffFAFAFC);
Color eBlueBackgroundColor = const Color(0xff5589F0);
Color eGreyBackgroundColor = const Color(0xffEEEEEE);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: eBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: eWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: eGreyColor,
);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: ePrimaryColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: eRedColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
