import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:petology_web/constants.dart';
import 'package:petology_web/view/components/AppBar/app_bar_custom.dart';
import 'package:petology_web/view/components/ButtonCustom.dart';
import 'package:petology_web/view/components/TextFormFieldCustom/TextFormFieldCustom.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80),
        child: AppBarCustom(),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: screenSize.height * 0.03),
              height: screenSize.height * 0.4,
              width: 450,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Align(
                    alignment: Alignment(0, -1),
                    child:
                        SvgPicture.asset('assets/image/Dog.svg', height: 192),
                  ),
                  Container(
                    height: screenSize.height * 0.5,
                    width: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: primaryColor, width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: primaryColor)),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormFieldCustom(
                          title: 'Email', validator: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormFieldCustom(
                          title: 'Password', validator: (value) {},
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 400,
                          height: 50,
                          child: ButtonCustom(
                            title: 'Login',
                            onTap: () {},
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Forgret Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        divider(),
                        SizedBox(
                          height: 20,
                        ),
                        SignWithFacebookGoogle(() {}, () {}),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Didn\'t have an account?',
                              style: TextStyle(
                                  color: primaryColor.withOpacity(0.6),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              child: Text(' sign up',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/image/footer3.jpg',
                    fit: BoxFit.fill,
                  )
                  // SvgPicture.asset('assets/image/footer.svg',fit: BoxFit.fill,),
                  ))
        ],
      ),
    );
  }
}

Widget SignWithFacebookGoogle(VoidCallback onTapF, VoidCallback onTapG) {
  return Row(
    children: [
      SizedBox(
        width: 15,
      ),
      SignInButton(
        Buttons.Facebook,
        padding: EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        text: "Facebook",
        onPressed: () {},
      ),
      SizedBox(
        width: 40,
      ),
      SignInButton(
        Buttons.Google,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        text: "Google",
        onPressed: () {},
      ),
    ],
  );
}

Widget divider() {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Divider(
            color: primaryColor,
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            'Or',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: primaryColor),
          ),
        ),
        Expanded(
          child: Divider(
            color: primaryColor,
            thickness: 2,
          ),
        )
      ],
    ),
  );
}
