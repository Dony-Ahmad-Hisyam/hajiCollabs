import 'package:flutter/material.dart';

class wajibHajiUSAPage extends StatefulWidget {
  const wajibHajiUSAPage({Key? key}) : super(key: key);

  @override
  State<wajibHajiUSAPage> createState() => _wajibHajiUSAPageState();
}

class _wajibHajiUSAPageState extends State<wajibHajiUSAPage> {
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
              'images/whUSA.png',
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
                        "\tBefore going into the Hajj procedures that will be learned in the Hajj rituals, we first understand the obligatory Hajj. Reporting from walisongo.ac.id, the obligatory Hajj is everything that must be done during the Hajj. If you leave it, you have to pay a check (fine). The seven obligatory pilgrimages are as follows.\n1. Ihram from miqat.\n2. Wukuf at Arafah.\n3. Mabit or overnight in Muzdalifah on the \n    9th of Dzulhijjah.\n4. Mabit or overnight in Mina on the day of \n    tashrik (11,12,13 Dzulhijjah).\n5. Tahallul / shave your hair.\n6. Throwing the python.\n7. Tawaf Wada`",
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
