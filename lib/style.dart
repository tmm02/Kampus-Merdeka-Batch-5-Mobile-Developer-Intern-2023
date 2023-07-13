// import 'package:driverid/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const Color bgcolor = Colors.white;
  static const Color colorPrimary = Color(0xff36ACE2);
  static const Color colorPrimaryTransparent60 =
      Color.fromRGBO(21, 33, 77, 0.6);
  static const Color colorPrimaryTransparent50 =
      Color.fromRGBO(21, 33, 77, 0.5);
  static const Color colorSecondary = Color(0xffECF8FF);
  static const Color colorDanger = Color(0xffFF4B55);

  //Input Text
  static const TextStyle inputTextDefaultTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color(0xFF000000),
  );
  static const TextStyle inputTextHintDefaultTextStyle =
      TextStyle(fontSize: 16.0, color: Color(0xFF857B7B));
  static const Color inputTextDefaultBackgroundColor =
      Colors.white; //Color(0x0D15214D);
  static const Color inputTextDefaultBorderColor =
      Colors.black; //Color(0x0D15214D);
  static const Color inputTextDefaultFocusBorderColor = colorPrimary;

  //Button
  static const TextStyle buttonDefaultTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color(0xFFFFFFFF),
  );
  static const Color buttonDefaultBackgroundColor =
      Color.fromRGBO(43, 99, 123, 1);
  static const Color buttonDefaultSplashColor = Colors.blueGrey;
  static const Color buttonDefaultDisableBackgroundColor = Colors.grey;
  static const Color buttonDefaultTextDisableColor = Colors.black;
  static const Color buttonDefaultBorderColor = colorPrimary;

  static const TextStyle progressBarTitleTextStyle = TextStyle(
      fontSize: 16, color: Styles.colorPrimary, fontWeight: FontWeight.bold);

  static const TextStyle dialogContentTextStyle = TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal);

  static const TextStyle dialogYesTextStyle =
      TextStyle(fontSize: 16, color: colorPrimary, fontWeight: FontWeight.bold);

  static const TextStyle dialogCancelTextStyle =
      TextStyle(fontSize: 16, color: colorPrimary, fontWeight: FontWeight.bold);

  static const TextStyle linkTextStyle = TextStyle(
    fontSize: 14,
    color: colorPrimary,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline,
  );

  static const TextStyle listMenuLabelTextStyle = TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal);
  static const TextStyle BoldTitleTextStyle =
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  static const TextStyle greyTextStyle = TextStyle(
      fontSize: 16, color: Colors.grey, fontWeight: FontWeight.normal);
}
