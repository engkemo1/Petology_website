import 'package:flutter/material.dart';

import '../../components/AppBar/app_bar_custom.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80),
        child: AppBarCustom(),
      ),
      body: Container(
        child: Center(
          child: Text('About Us'),
        ),
      ),
    );
  }
}
