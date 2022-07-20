

import 'package:flutter/material.dart';
import 'package:petology_web/constants.dart';
import 'package:petology_web/view/components/AppBar/app_bar_custom.dart';
import 'package:petology_web/view/components/Drawer/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80),
        child: AppBarCustom(),
      ),
      drawer: Drawer(child: drawer(),),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: primaryColor,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not only people need a house'),
                      Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\n sed diam nonumy eirmod tempor invidunt ut labore et \n dolore magna aliquyam erat, sed diam voluptua. At vero \n eos et accusam et justo duo dolores et ea rebum. Stet \n clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.')

                  ],)
                ],
              ),

            )
          ],
        ),
      ) ,
    );
  }
}
