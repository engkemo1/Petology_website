import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petology_web/DogDetails.dart';
import 'package:petology_web/view/components/responsive.dart';
import 'package:petology_web/view/pages/Adaption.dart';
import 'package:petology_web/view/pages/Auth/SignIn.dart';
import 'package:petology_web/view/pages/Auth/SignUp.dart';

import '../../../constants.dart';
import '../component.dart';
import '../text_custom/text_custom.dart';

class AppBarCustom extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size
        .width;

    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,end:Alignment.centerRight ,
                  colors: [
                    primaryColor
                    ,
                    backgroundColor1
                  ]
              )
          ),

          height: 90,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Responsive(mobile:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/image/logo.svg',
                  width: 100,
                ),
                IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.more_vert,color: secondaryColor,))
              ],
            ) ,desktop:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/image/logo.svg',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _appBarButton('About us', () {}, context),
                    _appBarButton('Adaption', () {
                      navigatorAndRemove(context, Adaption());
                    }, context),
                    _appBarButton('Services', () {
                      navigatorAndRemove(context, DogDetails());

                    }, context),
                    _appBarButton('Request', () {}, context)
                  ],
                ),
                Row(

                  children: [
                    signUpButton('Sign Up', () {navigator(context,SignUp());}, context),
                    SizedBox(width: size * 0.01,),
                    loginButton('Login', () {navigator(context,SignIn());}, context)
                  ],
                )
              ],
            ), )

          ),
        ));
  }
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
