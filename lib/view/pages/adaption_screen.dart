import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology_web/view/components/grid_view_item/grid_view_item.dart';
import 'package:petology_web/view/components/text_custom/text_custom.dart';

import '../../constants.dart';
import '../components/AppBar/app_bar_custom.dart';
import '../components/drop_down_button_custom/drop_down_button_custom.dart';

class AdaptionScreen extends StatelessWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

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
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Breed",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            "Size",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            "Good with",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            "Hair Lenght",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            "Care & Behavior",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                          DropDownButtonText(
                            icon: Icons.keyboard_arrow_down_rounded,
                            width: w * .12,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: h * .7,
                        width: w * .7,
                        //want to make grid view here

                        child: GridView.builder(
                            itemCount: 9,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            childAspectRatio: .8,
                            mainAxisSpacing: 9,
                            crossAxisSpacing: 6.0,
                            maxCrossAxisExtent: 300,
                          ),
                          itemBuilder: (context, index) {
                            return BuildCard(context);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          "Show more.....",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                          ),
                        ),
                      )
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
