import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


double defaultMargin = 30.0;

/* Arti dari 0x adalah kita akan menggunakan warna Hex */
/* Arti dari ff adalah opacity dari warna nya adalah 100% */
Color primaryColor = const Color(0xff6C5ECF);
Color secondaryColor = const Color(0xff38ABBE);
Color alertColor = const Color(0xffED6363);
Color priceColor = const Color(0xff2C96F1);
Color bgColor1 = const Color(0xff1F1D2B);
Color bgColor2 = const Color(0xff2B2937);
Color bgColor3 = const Color(0xff242231);
Color primaryTextColor = const Color(0xffF1F0F2);
Color secondaryTextColor = const Color(0xff999999);
Color subtitleColor = const Color(0xff504F5E);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);


FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

