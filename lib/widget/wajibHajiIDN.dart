import 'package:flutter/material.dart';

class wajibHajiPage extends StatefulWidget {
  const wajibHajiPage({Key? key}) : super(key: key);

  @override
  State<wajibHajiPage> createState() => _wajibHajiPageState();
}

class _wajibHajiPageState extends State<wajibHajiPage> {
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
      body: Stack(
        children: [
          Positioned.fill(
            top: 0.1,
            child: Image.asset(
              'images/wh.png',
              alignment: Alignment.topCenter,
            ),
          ),
          // Kotak isi deskripsi
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.56,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Color(0xFF235092),
                    width: 1,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "\tSebelum masuk ke tata cara berhaji yang akan dipelajari di manasik haji, kita pahami dulu mengenai wajib haji. Dilansir dari walisongo.ac.id, wajib haji adalah semua yang harus dilakukan saat berhaji. Jika ditinggalkan, maka harus membayar dam (denda). Tujuh wajib haji tersebut adalah sebagai berikut.\n1. Ihram dari miqat.\n2. Wukuf di Arafah.\n3. Mabit atau bermalam di Muzdalifah pada \n    tanggal 9 Dzulhijjah.\n4. Mabit atau bermalam di Mina pada hari \n    tasyrik ( 11,12,13 Dzulhijjah ).\n5. Tahallul / mencukur rambut.\n6. Melempar jumrah.\n7. Tawaf Wada’",
                        style: TextStyle(
                          fontFamily: 'MontserratRomanBold',
                          color: Color(0xFF235092),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
