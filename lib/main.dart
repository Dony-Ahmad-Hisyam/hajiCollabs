import 'package:flutter/material.dart';
import 'package:haji/widget/laranganIhramIDN.dart';
import 'package:haji/widget/tataCaraIDN.dart';
import 'package:haji/widget/wajibHajiUSA.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TataCaraIDNPage(),
    );
  }
}
