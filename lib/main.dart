import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ott/themeprovider.dart';
import 'package:ott/validationott.dart';
import 'package:ott/watchlistott.dart';
import 'package:provider/provider.dart';

import 'crud.dart';
import 'imagepickerott.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child:const MyApp(),
      ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:Provider.of<ThemeProvider>(context).themeData,
      // ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home:
      // imagepic(),
      AnimatedSplashScreen(
        splash: Image.asset("assets/disney.jpg",
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          fit: BoxFit.cover,
        ),
        duration: 2500,
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 1000,
        animationDuration: Duration(seconds: 1),
        backgroundColor: Color(0xff1e2d6e),
        nextScreen: valid(),),
    );
  }
}
