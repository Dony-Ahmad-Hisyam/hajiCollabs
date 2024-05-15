import 'package:flutter/material.dart';
import 'package:haji/widget/definisiUSA.dart';
import 'package:haji/widget/doaNiatUSA.dart';
import 'package:haji/widget/hakJemaahUSA.dart';
import 'package:haji/widget/hikmahUSA.dart';
import 'package:haji/widget/laranganIhramUSA.dart';
import 'package:haji/widget/tataCaraIDN.dart';
import 'package:haji/widget/tataCaraUSA.dart';
import 'package:haji/widget/tataHajiWanitaIDN.dart';
import 'package:haji/widget/tataHajiWanitaUSA.dart';
import 'package:haji/widget/wajibHajiUSA.dart';

class menuUSAPages extends StatefulWidget {
  const menuUSAPages({Key? key}) : super(key: key);

  @override
  State<menuUSAPages> createState() => _menuUSAPagesState();
}

class _menuUSAPagesState extends State<menuUSAPages> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 16),
            ),
            _buildImageContainerWithTitle(
              'Definition and Concept of Hajj',
              [
                'images/menuDef2.png',
                'images/menuHak2.png',
                'images/menuWaj2.png'
              ],
              context,
              targetPages: [
                defisiniUSAPage(),
                hakjemaahusa(),
                wajibHajiUSAPage()
              ],
            ),
            _buildImageContainerWithTitle(
              'Procedures for Performing Hajj',
              [
                'images/menuTat2.png',
                'images/menuTatCa2.png',
                'images/menuLar2.png'
              ],
              context,
              targetPages: [
                TataCaraUSAPage(),
                CaraWanitaEngPage(),
                prohibitionsOfIhramPage()
              ],
            ),
            _buildImageContainerWithTitle(
              'Wisdom and Prayers for Hajj',
              [
                'images/meneHik2.png',
                'images/menuDoa2.png',
              ],
              context,
              targetPages: [hikmahusa(), DoaNiatUSAPage()],
            ),
            _buildImageContainerWithTitle(
              'Video Tutorials',
              [
                'images/menuVid3.png',
                'images/menuVid4.png',
              ],
              context,
              targetPages: [TataCaraIDNPage(), CaraWanitaPage()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainerWithTitle(
    String title,
    List<String> imagePaths,
    BuildContext context, {
    List<Widget>? targetPages, // Mengubah parameter menjadi List<Widget>
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF235092),
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.10),
                  offset: Offset(4, 4),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: Color(0xFF48D8E8),
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double totalWidth = constraints.maxWidth;
                    double imageWidth = 100;
                    double spacing = (totalWidth - (imageWidth * 3)) / 4;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(imagePaths.length, (index) {
                        return _buildImageWithNavigation(
                            imagePaths[index], context, targetPages![index]);
                      }),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithNavigation(
      String imagePath, BuildContext context, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Image.asset(
        imagePath,
        width: 100,
        height: 98,
      ),
    );
  }
}
