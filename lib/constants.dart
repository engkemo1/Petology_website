import 'package:flutter/material.dart';

import 'view_model/database/local/cache_helper.dart';

const Color primaryColor = Color(0xff56392D);
const Color secondaryColor = Color(0xffFFE3C5);
const Color backgroundColor1 = Color(0xff180701);

const textColorDrawer = Colors.white;
const iconColorDrawer = Colors.white;
const shadowColor = Color.fromRGBO(143, 148, 251, .2);

String? userToken = CacheHelper.get(key: "accessToken");
String? userRefreshToken = CacheHelper.get(key: "refreshToken");
String? userType = CacheHelper.get(key: "userType");
String? userView = CacheHelper.get(key: "userView");
String? role = CacheHelper.get(key: "role");

LinearGradient gradientColor({required Color one, required Color two}) {
  return LinearGradient(
    colors: [one, two],
  );
}

const gray = Color(0xffFAFAFA);
const grayTwo = Color(0xffF5F5F5);
const grayText = Color(0xff9F9D9B);

const MaterialColor color = MaterialColor(
  0xff07919C,
  // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
  <int, Color>{
    50: Color(0xffFF6600), //10%
    100: Color(0xffFF6600), //20%
    200: Color(0xffFF6600), //30%
    300: Color(0xffFF6600), //40%
    400: Color(0xffFF6600), //50%
    500: Color(0xffFF6600), //60%
    600: Color(0xffFF6600), //70%
    700: Color(0xffFF6600), //80%
    800: Color(0xffFF6600), //90%
    900: Color(0xffFF6600), //100%
  },
);
bool connected = true;

const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Colors.grey;
const kBlackColor = Color(0xFF101010);
const double kDefaultPadding = 20.0;

const newVv = LinearGradient(
  begin: Alignment(0.0, -1.0),
  end: Alignment(0.0, 1.0),
  colors: [Color(0xff3FB8C0), Color(0xff0399A0), Color(0xff07919c)],
);

const orangeGradient = LinearGradient(
  begin: Alignment(0.0, -1.0),
  end: Alignment(0.0, 1.0),
  colors: [Color(0xffFF6600), Color(0xffFF9752), Color(0xffFFC9A5)],
);

const Color primaryOrange = Color(0xffFF6600);

