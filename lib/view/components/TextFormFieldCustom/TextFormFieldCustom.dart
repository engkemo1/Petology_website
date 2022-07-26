import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String title;
    Widget? suffixIcon;
  final Function validator;

    TextFormFieldCustom({required this.title,     this.suffixIcon,    required this.validator,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(alignment: Alignment.center,
          padding: EdgeInsets.only(left: 15, right: 15),
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
          child: TextFormField(    validator: (value) => validator(value),
            decoration: InputDecoration(
                 hintText: title,
                hintStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0x63492f24),
                  fontWeight: FontWeight.w700,
                ),
                border: InputBorder.none,
             suffixIcon: suffixIcon,
            ),
          )),
    );
  }
}
