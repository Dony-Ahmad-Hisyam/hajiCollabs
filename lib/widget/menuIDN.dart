import 'package:flutter/material.dart';
import 'package:haji/widget/definisiIDN.dart';
import 'package:haji/widget/doaNiatIDN.dart';
import 'package:haji/widget/hakJemaahIDN.dart';
import 'package:haji/widget/hikmahIDN.dart';
import 'package:haji/widget/laranganIhramIDN.dart';
import 'package:haji/widget/tataCaraIDN.dart';
import 'package:haji/widget/tataHajiWanitaIDN.dart';
import 'package:haji/widget/wajibHajiIDN.dart'; // Pastikan import halaman definisiIDN.dart atau sesuaikan dengan lokasi halaman yang benar

class MenuIDNPages extends StatefulWidget {
  const MenuIDNPages({Key? key}) : super(key: key);

  @override
  State<MenuIDNPages> createState() => _MenuIDNPagesState();
}

class _MenuIDNPagesState extends State<MenuIDNPages> {
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
              'Definisi dan Konsep Haji',
              [
                'images/menuDef.png',
                'images/menuHak.png',
                'images/menuWaj.png'
              ],
              context,
              targetPages: [definisiPage(), hakjemaahidn(), wajibHajiPage()],
            ),
            _buildImageContainerWithTitle(
              'Tata Cara Pelaksanaan Haji',
              [
                'images/menuTat.png',
                'images/menuTatCa.png',
                'images/menuLar.png'
              ],
              context,
              targetPages: [
                TataCaraIDNPage(),
                CaraWanitaPage(),
                laranganIhramPage()
              ],
            ),
            _buildImageContainerWithTitle(
              'Hikmah dan Do’a Haji',
              [
                'images/menuHikk.png',
                'images/menuDoa.png',
              ],
              context,
              targetPages: [hikmahidn(), DoaNiatIDNPage()],
            ),
            _buildImageContainerWithTitle(
              'Video Tutorial',
              [
                'images/menuVid1.png',
                'images/menuVid2.png',
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
                            imagePaths[index],
                            context,
                            targetPages![
                                index]); // Gunakan index untuk mengambil halaman target yang sesuai
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
    // Mengubah tipe parameter targetPage menjadi Widget
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
