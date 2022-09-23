import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen1 extends StatefulWidget {
  const MainScreen1({super.key});

  @override
  State<MainScreen1> createState() => _MainScreen1State();
}

class _MainScreen1State extends State<MainScreen1> {
  var userQ = "";
  var userA = "";
  var userC = "";
  var hex = "3b5466";
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 2.h),
              child: Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Container(padding: EdgeInsets.all(20), child: Text(userQ, style: TextStyle(fontSize: 35.sp),)), 
                  Container(padding: EdgeInsets.all(20), child: Text(userA, style: TextStyle(fontSize: 25.sp, color: Colors.grey[500])))
                  ],),
                height: 35.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    /*boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0)
                    ]*/),
              )),
          Container(
            width: 100.w,
            height: 59.h,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 2.h),
                  child: Container(
                    width: 18.w,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ = "";userA = "";});}, child: Text("C", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: const Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])
                        ),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "7";equalPressed();});}, child: Text("7", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "4";equalPressed();});}, child: Text("4", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "1";equalPressed();});}, child: Text("1", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "0";equalPressed();});}, child: Text("0", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                      ],
                    ),  
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 1.h),
                  child: Container(
                    width: 18.w,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ = userQ.substring(0, userQ.length - 1);});}, child: Text("DEL", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: const Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "8";equalPressed();});}, child: Text("8", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "5";equalPressed();});}, child: Text("5", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "2";equalPressed();});}, child: Text("2", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += ".";});}, child: Text(".", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                      ],
                    ),  
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 2.h),
                  child: Container(
                    width: 18.w,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "%";});}, child: Text("%", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: const Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])
                        ),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "9";equalPressed();});}, child: Text("9", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "6";equalPressed();});}, child: Text("6", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "3";equalPressed();});}, child: Text("3", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "0";});}, child: Text("", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                      ],
                    ),  
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.5.h, horizontal: 1.h),
                  child: Container(
                    width: 18.w,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "/"; });}, child: Text("/", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: const Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])
                        ),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "*";});}, child: Text("*", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "-";});}, child: Text("-", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userQ += "+";});}, child: Text("+", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                        SizedBox(height: 1.75.h,),
                        Container(height: 9.h, child: FittedBox(fit: BoxFit.contain, child: TextButton(onPressed: () {setState(() {userC = userA; userA = userQ; userQ = userC;});}, child: Text("=", style: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),))), decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange[500], boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0)])),
                      ],
                    ),  
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void equalPressed() {
    String FinalQ = userQ;
    Parser p = Parser();
    Expression exp = p.parse(FinalQ);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    userA = eval.toString();
  }
}


