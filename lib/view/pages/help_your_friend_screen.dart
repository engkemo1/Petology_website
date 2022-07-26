import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology_web/view/components/drop_down_button_custom/drop_down_button_custom.dart';
import 'package:petology_web/view/components/new_text_form_field.dart';

import '../../constants.dart';
import '../../view_model/request_qubit/request_cubit.dart';
import '../../view_model/request_qubit/request_stetes.dart';
import '../components/AppBar/app_bar_custom.dart';
import '../components/ButtonCustom.dart';
import '../components/TextFormFieldCustom/TextFormFieldCustom.dart';
import '../components/component.dart';

class HelpYourFriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final formKey = GlobalKey<FormState>();

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
            body: BlocProvider(
              create: (context) => RequestCubit(),
              child: BlocConsumer<RequestCubit, RequestState>(
                listener: (BuildContext context, state) {},
                builder: (BuildContext context, Object? state) {
                  var cubit = RequestCubit.get(context);
                  return Center(
                    child: Form(
                      key: formKey,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
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
                            GestureDetector(
                              onTap: () {
                                cubit.getImageForWeb();
                              },
                              child: Center(
                                child: cubit.imageBytes == null
                                    ? SvgPicture.asset(
                                        "assets/image/camera.svg",
                                        width: w * .05,
                                        height: w * .05,
                                      )
                                    : Image.memory(cubit.imageBytes!,
                                        width: w * .09, height: w * .09),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            DropDownButtonText(
                                text: "Category",
                                icon: Icons.keyboard_arrow_down_rounded),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 400,
                              child: NewTextFormField(
                                  controller: TextEditingController(),
                                  obscureText: false,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Please enter your name";
                                    }
                                    return null;
                                  },
                                suffixIcon  : Icon(
                                    Icons.location_on,
                                    color: gradientSecondColor,
                                  ),
                                prefixIcon : SizedBox(),
                                  hintText: "Location"),
                            ),
                            /*
                            TextFormFieldCustom(
                              title: "Location",
                              suffixIcon: Icon(
                                Icons.location_on,
                                color: kBlackColor,
                              ),
                              validator: (v) {
                                if (v.isEmpty) {
                                  showToast(
                                      message: "Please enter your location",
                                      color: kRedColor);
                                }
                              },
                            ),*/
                            // DropDownButtonText(
                            //     text: cubit.address,
                            //     icon: Icons.location_on,
                            //     callback: () {cubit.updatePosition();}),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 400,
                              child: NewTextFormField(
                                  controller: TextEditingController(),
                                  obscureText: false,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Please enter your  phone number";
                                    }
                                    return null;
                                  },
                                  suffixIcon  : SizedBox(),
                                  prefixIcon : SizedBox(),
                                  hintText: "Phone number"),
                            ),


                            SizedBox(
                              height: 30,
                            ),
                            ButtonCustom(
                              title: "Send",
                              width: w * 0.3,
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  print(" valid");
                                }
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ButtonCustom(
                              color2: primaryColor,
                              color: Color(0xffffe3c5),
                              title: "Call",
                              width: w * 0.3,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
