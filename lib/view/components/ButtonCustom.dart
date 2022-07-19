import 'package:flutter/material.dart';
import 'package:petology_web/constants.dart';
class ButtonCustom extends StatelessWidget {
  final String title;
  final Color? color;
  final double? width;
  final Icon? icon;
final VoidCallback onTap;
  const ButtonCustom({ required this.title,  this.color,  this.width, this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return
        ElevatedButton(
          child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: secondaryColor,fontSize: 20),),
          onPressed:onTap,

          style: ElevatedButton.styleFrom(
            primary: primaryColor,


            onPrimary: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),


          ),
        )
    ;
  }
}
