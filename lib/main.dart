// ignore_for_file: prefer_const_constructors
import 'package:calculator/MainScreen1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const MyApp());
  /*runApp(DevicePreview(
      enabled: true,
      tools: [...DevicePreview.defaultTools],
      builder: (context) => MyApp()));*/
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calculator',
          theme: ThemeData(
              textTheme:
                  GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)),
          //theme: ThemeData(primaryColor: Colors.white),
          home: MainScreen1(),
        );
      },
    );
  }
}
