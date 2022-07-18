import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

//Here we Build light Theme
ThemeData lightTheme(context) {
  return ThemeData(
    textTheme: GoogleFonts.nunitoTextTheme(
      Theme.of(context).textTheme,
    ).apply(bodyColor: kBlackColor,fontFamily: 'roboto'),
    primarySwatch: color,
    primaryColor: primaryOrange,
    scaffoldBackgroundColor: Colors.white,
    accentColor: primaryOrange,
    appBarTheme: const AppBarTheme(
    //  toolbarHeight: 80,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: primaryOrange,
      ),
      color: Colors.white,
      elevation: 0,

      titleTextStyle: TextStyle(),
    ),
    );
}
