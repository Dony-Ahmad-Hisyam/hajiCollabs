import 'package:flutter/material.dart';
import 'package:haji/navigasi/core/app_export.dart';
import 'package:haji/navigasi/theme/appbar_subtitle.dart';
import 'package:haji/navigasi/theme/appbar_title.dart';
import 'package:haji/navigasi/theme/custom_app_bar.dart';
import 'package:haji/navigasi/theme/custom_drop_down.dart';
import 'package:haji/navigasi/theme/custom_outlined_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PilihBahasaScreen extends StatefulWidget {
  PilihBahasaScreen({Key? key}) : super(key: key);

  @override
  State<PilihBahasaScreen> createState() => _PilihBahasaScreenState();
}

String currentLanguage = "indonesia";

class _PilihBahasaScreenState extends State<PilihBahasaScreen> {
  List<String> dropdownItemList = ["Indonesia", "English"];
  bool isLanguageSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        backgroundColor: Colors.cyan[300],
        body: SizedBox(
          height: 720,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildNine(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 750,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 80.h),
                        child: Transform.translate(
                            offset: Offset(0,
                                50.h), // Adjust the value to move the image downwards
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFireflyIllustration,
                              height: 750.v,
                              width: 360.h,
                              alignment: Alignment.center,
                            )),
                      ),
                      CustomOutlinedButton(
                        width: 100,
                        text: "NEXT",
                        margin: EdgeInsets.only(right: 10, bottom: 40),
                        onPressed: isLanguageSelected
                            ? () {
                                if (currentLanguage == "indonesia") {
                                  Navigator.pushNamed(
                                      context, AppRoutes.dashboardIDN);
                                } else if (currentLanguage == "english") {
                                  Navigator.pushNamed(
                                      context, AppRoutes.dashboardUSA);
                                }
                              }
                            : () {
                                _showLanguageAlert(context);
                              },
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 4),
                        ),
                        alignment: Alignment.bottomRight,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    width: 120,
                    margin: EdgeInsets.only(top: 80),
                    child: Image.asset('images/icon.png')),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 281,
                  margin: EdgeInsets.only(top: 250),
                  child: Text(
                    "A simple application that provides complete guidance for Hajj pilgrims. With an interactive design",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8),
            AppbarTitle(
              text: "Welcome",
            ),
            SizedBox(height: 0),
            AppbarSubtitle(
              text: "Hajj Elev.",
              margin: EdgeInsets.only(right: 32),
            ),
          ],
        ),
      ),
      actions: [
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 16),
          child: CustomDropDown(
            width: 140,
            hintText: "Pilih Bahasa",
            items: dropdownItemList,
            onChanged: (value) {
              setState(() {
                currentLanguage = value.toLowerCase();
                isLanguageSelected = true;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNine(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 130),
        padding: EdgeInsets.symmetric(horizontal: 134, vertical: 21),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              "ImageConstant.imgGroup9",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 60),
            Text(
              "Hajj Elev",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text("Please select a language first."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
