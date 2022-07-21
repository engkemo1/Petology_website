import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology_web/view/components/drop_down_button_custom/drop_down_button_custom.dart';

import '../../constants.dart';
import '../components/AppBar/app_bar_custom.dart';
import '../components/ButtonCustom.dart';
import '../components/TextFormFieldCustom/TextFormFieldCustom.dart';

class HelpYourFriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(w, 80),
        child: AppBarCustom(),
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset(
              "assets/image/dog-leg.svg",
              width: w * 0.4,
              height: h * 0.4,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: RotatedBox(
              quarterTurns: 2,
              child: SvgPicture.asset(
                "assets/image/dog-leg.svg",
                width: w * 0.4,
                height: h * 0.4,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: h * .355,
            child: SvgPicture.asset(
              "assets/image/dog-leg.svg",
              width: w * 0.4,
              height: h * 0.4,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                width: w * 0.7,
                height: h * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: gradientSecondColor,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Help your friend",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: gradientSecondColor,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        "assets/image/camera.svg",
                        width: w * .05,
                        height: w * .05,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    DropDownButtonText(text: "Category", icon: Icons.keyboard_arrow_down_rounded),
                    SizedBox(
                      height: 30,
                    ),
                    DropDownButtonText(text: "Location", icon: Icons.location_on)
                    ,SizedBox(
                      height: 30,
                    ),
                    TextFormFieldCustom(
                      title: "Phone number",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonCustom(
                      title: "Send",
                      width: w * 0.3,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonCustom(color2: primaryColor,
                      color: Color(0xffffe3c5),
                      title: "Call",
                      width: w * 0.3,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
