import 'package:flutter/material.dart';
import 'package:haji/navigasi/core/app_export.dart';

class hikmahidn extends StatefulWidget {
  const hikmahidn({Key? key}) : super(key: key);

  @override
  State<hikmahidn> createState() => _hikmahidnState();
}

class _hikmahidnState extends State<hikmahidn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
            color: Color(0xFF235092),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(children: [
        // Kotak isi deskripsi
        Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.10,
            child: SingleChildScrollView(
              // Tambahkan SingleChildScrollView di sini
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHikidn,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            )),
      ]),
    );
  }
}
