import 'package:flutter/material.dart';
import 'package:haji/navigasi/pilih_bahasa_screen.dart';
import 'package:haji/widget/tataCaraIDN.dart';
import './navigasi/core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'farizi_s_application3',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.pilihBahasaScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
