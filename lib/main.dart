import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/homepage.dart';

void main() async {

  //init hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //HomePage(),
      AnimatedSplashScreen(

          duration: 2500,
          splash: Icons.note_alt_sharp,
          nextScreen: HomePage(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.teal),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}

