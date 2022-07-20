import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology_web/view/components/Drawer/drawer.dart';

import '../../../constants.dart';
import '../../components/AppBar/app_bar_custom.dart';
import '../../components/ButtonCustom.dart';
import '../../components/TextFormFieldCustom/TextFormFieldCustom.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80),
        child: AppBarCustom(),
      ),
      body: Stack(
        children: [
          Align(
            child: SvgPicture.asset(
              'assets/image/pets.svg',
              height: screenSize.width * 0.3,
            ),
            alignment: Alignment(0.6, 0.01),
          ),
          Align(
            child: SvgPicture.asset('assets/image/pets.svg',
                height: screenSize.width * 0.3),
            alignment: Alignment(-0.6, -0.5),
          ),
          ListView(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(top: screenSize.height * 0.03),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: screenSize.height * 0.7,
                        width: 450,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: primaryColor, width: 2)),
                        child: Stack(
                          children: [
                            Align(
                              child: SvgPicture.asset(
                                'assets/image/pets2.svg',
                                height: 60,
                              ),
                              alignment: Alignment(-1.2, -1.07),
                            ),
                            Align(
                              child: SvgPicture.asset(
                                'assets/image/pets3.svg',
                                height: 60,
                              ),
                              alignment: Alignment(1.1, 1.04),
                            ),
                            ListView(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SignWithFacebookGoogle(() {}, () {}),
                                SizedBox(
                                  height: 20,
                                ),
                                divider(),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormFieldCustom(
                                  title: 'First Name',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormFieldCustom(
                                  title: 'Last Name',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormFieldCustom(
                                  title: 'Email',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormFieldCustom(
                                  title: 'Password',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormFieldCustom(
                                  title: 'Re_enter password',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                country(),
                                SizedBox(
                                  height: 20,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Already have an account?',
                                      style: TextStyle(
                                          color: primaryColor.withOpacity(0.6),
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    InkWell(
                                      child: Text(' sign in',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,)

                              ],
                            ),
                          ],
                        ),
                      )
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
          )
        ],
      ),
      drawer: Drawer(
        child: drawer(),
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
        padding: EdgeInsets.only(left: 20, top: 17, bottom: 17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        text: "Facebook",
        onPressed: () {},
      ),
      SizedBox(
        width: 60,
      ),
      SignInButton(
        Buttons.Google,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
Widget country(
){
  final List<String> _dropdownValues = [
    "Egypt",
    "Egypt",
    "Egypt",
  ]; //The list of values we want on the dropdown

  return  Container(
      padding: EdgeInsets.only(left: 15,right: 15),
      width: 400,
      height: 50,

      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(26.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),

        ],
      ),
      child:DropdownButtonFormField(
        items: _dropdownValues
            .map((value) => DropdownMenuItem(
          child: Text(value,style: TextStyle(   fontFamily: 'Arial',
            fontSize: 12,
            color: const Color(0x63492f24),
            fontWeight: FontWeight.w700,),),
          value: value,
        ))
            .toList(), onChanged: (String? value) {  },
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 15),
        ),
        hint: Text('Country',style: TextStyle(   fontFamily: 'Arial',
          fontSize: 12,
          color: const Color(0x63492f24),
          fontWeight: FontWeight.w700,),),

      ),
  );
}