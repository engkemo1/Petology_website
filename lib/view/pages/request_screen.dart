import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology_web/view/components/drop_down_button_custom/drop_down_button_custom.dart';
import 'package:petology_web/view/components/text_custom/text_custom.dart';

import '../../constants.dart';
import '../components/AppBar/app_bar_custom.dart';
import '../components/ButtonCustom.dart';
import '../components/TextFormFieldCustom/TextFormFieldCustom.dart';

class RequestScreen extends StatelessWidget {
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
              child: SingleChildScrollView(
                child: Container(margin: EdgeInsets.all(50),
                  padding: EdgeInsets.all(20),
                  width: w * 0.4,
                 
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: gradientSecondColor,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Request ",
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
                          "assets/image/dog.svg",
                          width: w * .1,
                          height: w * .1,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DropDownButtonText(
                          text: "Name",
                        )
                 ,
                      SizedBox(
                        height: 20,
                      ),
                      DropDownButtonText(
                          text: "Category",
                          icon: Icons.keyboard_arrow_down_rounded),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropDownButtonText(
                                text: "year",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            DropDownButtonText(
                                text: "months",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropDownButtonText(
                                text: "Size",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            DropDownButtonText(
                                text: "Breed",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropDownButtonText(
                                text: "Gender",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            DropDownButtonText(
                                text: "Breed",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropDownButtonText(
                                text: "Hair Lenght",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            DropDownButtonText(
                                text: "Care & behavior",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropDownButtonText(
                                text: "House Traind",
                                width: 200,
                                icon: Icons.keyboard_arrow_down_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            DropDownButtonText(
                              text: "Color",
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: w*.06),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Detect your current location",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      DropDownButtonText(text: "Location", icon: Icons.location_on)  ,      SizedBox(
                        height: 20,
                      ),

                      TextFormFieldCustom(
                        title: "Phone number", validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your phone number";
                          }
                          return null;
                        },
                      ), SizedBox(
                        height: 20,
                      ),

                      TextFormFieldCustom(
                        title: "Description", validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your description";
                          }
                          return null;
                        },
                      ),      SizedBox(
                        height: 20,
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: w*.06),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Vaccinated (up to date )",
                        ),
                      ),      SizedBox(
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

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
