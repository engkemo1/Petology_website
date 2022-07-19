import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../pages/Auth/SignIn.dart';
import '../../pages/Auth/SignUp.dart';
import '../component.dart';
class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      children: [
        SizedBox(height: 40,),
        SvgPicture.asset(
          'assets/image/logo.svg',
        ),
        SizedBox(height: 20,),
        _appBarButton('About us', () {}, context),
        _appBarButton('Categories', () {}, context),
        _appBarButton('Services', () {}, context),
        _appBarButton('Request', () {}, context)
        ,signUpButton('Sign Up', () {navigator(context,SignUp());}, context),
        SizedBox(width: size * 0.01,),
        loginButton('Login', () {navigator(context,SignIn());}, context)

      ],
    );
  }
}
Widget _appBarButton(String title, VoidCallback onTap, BuildContext context) {
  var size = MediaQuery
      .of(context)
      .size
      .width;

  return Padding(
      padding: EdgeInsets.only(left: size * 0.01, right: size * 0.01),
      child: FlatButton(
        child: Text(title,
            style: GoogleFonts.getFont(
              'Lato',
              color: Color(0xffC9C9C9),
              fontSize: size * 0.01,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
            )),
        onPressed: onTap,
      ));
}
Widget signUpButton(String? text, VoidCallback onTap, BuildContext context) {
  var size = MediaQuery
      .of(context)
      .size
      .width;

  return InkWell(
      onTap: onTap,
      child: Container(
          height: 35,
          width: size * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(
                color: secondaryColor,
              )),
          child: Center(
              child: Text(
                text!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: size * 0.01),
              ))));
}

Widget loginButton(String? text, VoidCallback onTap, BuildContext context) {
  var size = MediaQuery
      .of(context)
      .size
      .width;

  return InkWell(
      onTap: onTap,
      child: Container(
          height: 35,
          width: size * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryColor,
              border: Border.all(
                color: secondaryColor,
              )),
          child: Center(
              child: Text(
                text!,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: secondaryColor,
                    fontSize: size * 0.01),
              ))));
}