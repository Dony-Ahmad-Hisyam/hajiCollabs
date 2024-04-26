import 'package:flutter/material.dart';
import 'package:haji/navigasi/core/app_export.dart';
import '../pilih_bahasa_screen.dart';
import '../dashboard_screenIDN.dart';
import '../dashboard_screenUSA.dart';
import 'package:haji/widget/tataHajiWanitaIDN.dart';
import 'package:haji/widget/tataHajiWanitaUSA.dart';
import 'package:haji/widget/definisiIDN.dart';
import 'package:haji/widget/definisiUSA.dart';
import 'package:haji/widget/tataCaraIDN.dart';
import 'package:haji/widget/tataCaraUSA.dart';
import 'package:haji/widget/wajibHajiIDN.dart';
import 'package:haji/widget/wajibHajiUSA.dart';
import 'package:haji/widget/laranganIhramIDN.dart';
import 'package:haji/widget/laranganIhramUSA.dart';
import 'package:haji/widget/doaNiatIDN.dart';
import 'package:haji/widget/doaNiatUSA.dart';
import 'package:haji/widget/hakJemaahIDN.dart';
import 'package:haji/widget/hakJemaahUSA.dart';
import 'package:haji/widget/hikmahIDN.dart';
import 'package:haji/widget/hikmahUSA.dart';

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
  static const String doaNiatUSA = '/doaNiatUSA';
  static const String hikmahIDN = '/hikmahIDN';
  static const String hikmahUSA = '/hikmahUSA';
  static const String hakJemaahIDN = '/hakJemaahIDN';
  static const String hakJemaahUSA = '/hakJemaahUSA';
  static const String tataHajiWanitaIDN = '/tataHajiWanitaIDN';
  static const String tataHajiWanitaUSA = '/tataHajiWanitaEng';

  static Map<String, WidgetBuilder> routes = {
    dashboardIDN: (context) => DashboardScreenIDN(),
    dashboardUSA: (context) => DashboardScreenUSA(),
    pilihBahasaScreen: (context) => PilihBahasaScreen(),
    definisidIDN: (context) => definisiPage(),
    definisidUSA: (context) => defisiniUSAPage(),
    wajibhajiIDN: (context) => wajibHajiPage(),
    wajibhajiUSA: (context) => wajibHajiUSAPage(),
    tatacaraIDN: (context) => TataCaraIDNPage(),
    tataCaraUSA: (context) => TataCaraUSAPage(),
    laranganIDN: (context) => laranganIhramPage(),
    laranganUSA: (context) => prohibitionsOfIhramPage(),
    doaNiatIDN: (context) => DoaNiatIDNPage(),
    doaNiatUSA: (context) => DoaNiatUSAPage(),
    hikmahIDN: (context) => hikmahidn(),
    hikmahUSA: (context) => hikmahusa(),
    hakJemaahIDN: (context) => hakjemaahidn(),
    hakJemaahUSA: (context) => hakjemaahusa(),
    tataHajiWanitaIDN: (context) => CaraWanitaPage(),
    tataHajiWanitaUSA: (context) => CaraWanitaEngPage(),
  };
}
