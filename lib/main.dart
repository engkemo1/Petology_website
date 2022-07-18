import 'package:flutter/material.dart';
import 'package:petology_web/view/components/themes/light_theme.dart';

import 'view/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //This to Hide Debugger Banner in UI.
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      //Here The Theme.
      themeMode: ThemeMode.light,
      title: "Orange Learning",
      home: const MyHomePage(),
    );
  }
}

