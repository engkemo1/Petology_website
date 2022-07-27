import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology_web/constants.dart';
import 'package:petology_web/view/components/Drawer/drawer.dart';
import 'package:petology_web/view/components/responsive.dart';

import '../components/AppBar/app_bar_custom.dart';

class Adaption extends StatelessWidget {
  const Adaption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80),
        child: AppBarCustom(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20, top: 40),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [primaryColor, backgroundColor1])),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 1),
                    child: SvgPicture.asset(
                      'assets/image/blate.svg',
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -2),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [primaryColor, backgroundColor1])),
                      padding: EdgeInsets.all(20),
                      height: 250,
                      width: screenSize.width,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: SvgPicture.asset(
                      'assets/image/bone.svg',
                      width: 350,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.6,-0.7),

                    child: SvgPicture.asset('assets/image/material.svg',height:Responsive.isDesktop(context)? 500:300,),
                  ),

                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'How you feed Your Dog?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 30),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                          width: screenSize.width - 70,
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            '''
As a general rule, puppies and young dogs burn more calories, so they need a greater quantity of food that is higher in protein and fat. Older, less active dogs require fewer calories to remain healthy.






Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable amount and monitor his body weight.

“You should be able to feel your pet’s ribs easily as you slide your hand over his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so begin to feed a smaller quantity.”  


If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box. It lists different weights and the corresponding amount of food to feed your dog to maintain that weight, and should be used only as a rough guideline.

Many dogs are overweight because their families closely followed the directions on the label, which often indicates portion sizes that are too large. After all, the sooner the bag is empty, the sooner you will need to buy more food.

Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and body condition is a good way to proceed.

Different Portions for Different Pooches

Though it may sound counterintuitive, as a general rule, large breed dogs require less food and small breed dogs require more food when expressed on a volume of food per pound of body weight. The food requirements of individual dogs vary according to their health, level of activity, and age.

Here are some guidelines for portion sizes at different stages of your dog’s life:

                          ''',
                            maxLines: 100,
                            style: TextStyle(
                                wordSpacing: 1,
                                fontSize: 18,
                                color: primaryColor),
                          )),
                    ],
                  ))
                ],
              ),
            ),
            Image.asset(
              'assets/image/footer3.jpg',
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: drawer(),
      ),
    );
  }
}
