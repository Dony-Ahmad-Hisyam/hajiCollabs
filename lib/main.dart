import 'package:flutter/material.dart';
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
          // theme: theme,
          title: 'Hajj Elev',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.pilihBahasaScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
