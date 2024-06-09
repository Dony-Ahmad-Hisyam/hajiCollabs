import 'package:flutter/material.dart';
import 'package:haji/navigasi/core/app_export.dart';

class hakjemaahusa extends StatefulWidget {
  const hakjemaahusa({Key? key}) : super(key: key);

  @override
  State<hakjemaahusa> createState() => _hakjemaahusaState();
}

class _hakjemaahusaState extends State<hakjemaahusa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgHuk,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
