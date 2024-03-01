import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/styles/colors.dart';

TextStyle appBarTitleStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(fontSize: 14, color: appBarTextColor),
);

TextStyle descriptionStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(fontSize: 14, color: articleTextColor),
);

TextStyle authorStyle = descriptionStyle.copyWith(fontSize: 12);

TextStyle titleStyle =
    descriptionStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

TextStyle errorStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(fontSize: 20, color: articleTextColor),
);
