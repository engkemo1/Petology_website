import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology_web/view/components/ButtonCustom.dart';

import '../../../constants.dart';

Widget BuildCard(context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;

  return InkWell(
    onTap: () {},
    child: Card(
      elevation: 2,
      color: Color(0xffeaeaea),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              //   height: height * .25,

              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: SvgPicture.asset(
                      "assets/image/dog.svg",
                      width: width * .12,
                      height: width * .01,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        size: 22,
                        color: grey70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCustom(
                    title: "Doby",
                    onTap: () {},
                    height: height * .04  ,
                    width: width * .1,
                  ),

                  Text(
                    "By Levi",
                    style: TextStyle(
                      fontSize: 12,
                      color: grey70,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
