import 'package:flutter/material.dart';
import 'package:haji/widget/doaNiatIDN.dart';
import '..//pilih_bahasa_screen.dart';
import '../dashboard_screenIDN.dart';
import '../dashboard_screenUSA.dart';
import 'package:haji/widget/definisiIDN.dart';
import 'package:haji/widget/definisiUSA.dart';
import 'package:haji/widget/tataCaraIDN.dart';
import 'package:haji/widget/tataCaraUSA.dart';
import 'package:haji/widget/wajibHajiIDN.dart';
import 'package:haji/widget/wajibHajiUSA.dart';
import 'package:haji/widget/laranganIhramIDN.dart';
import 'package:haji/widget/laranganIhramUSA.dart';
import 'package:haji/widget/doaNiatIDN.dart';

class AppRoutes {
  static const String pilihBahasaScreen = '/pilih_bahasa_screen';
  static const String dashboardIDN = '/dashboard_screenIDN';
  static const String dashboardUSA = '/dashboard_screenUSA';
  static const String definisidUSA = '/definisiUSA';
  static const String definisidIDN = '/definisiIDN';
  static const String wajibhajiUSA = '/wajiHajibUSA';
  static const String wajibhajiIDN = '/wajiHajibIDN';
  static const String tatacaraIDN = '/tataCaraIDN';
  static const String tataCaraUSA = '/tataCaraUSA';
  static const String laranganIDN = '/laranganIhramIDN';
  static const String laranganUSA = '/laranganIhramUSA';
  static const String doaNiatIDN = '/doaNiatIDN';

  static Map<String, WidgetBuilder> routes = {
    dashboardIDN: (context) => DashboardScreenIDN(),
    dashboardUSA: (context) => DashboardScreenUSA(),
    pilihBahasaScreen: (context) => PilihBahasaScreen(),
    definisidIDN: (context) => definisiPage(),
    definisidUSA: (context) => defisiniUSAPage(),
    wajibhajiIDN: (context) => wajibHajiPage(),
    wajibhajiUSA: (context) => wajibHajiUSAPage(),
    tatacaraIDN: (context) => TataCaraIDNPage(),
    tataCaraUSA:(context) => tataCaraUSAPage(),
    laranganIDN: (context) => laranganIhramPage(),
    laranganUSA: (context) => prohibitionsOfIhramPage(),
    doaNiatIDN: (context) => DoaNiatIDNPage(),
  };
}
