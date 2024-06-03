import 'package:flutter/material.dart';

class defisiniUSAPage extends StatefulWidget {
  const defisiniUSAPage({Key? key}) : super(key: key);

  @override
  State<defisiniUSAPage> createState() => _defisiniUSAPageState();
}

class _defisiniUSAPageState extends State<defisiniUSAPage> {
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
              'images/defUSA.png',
              alignment: Alignment.topCenter,
            ),
          ),
          // Kotak isi deskripsi
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.53,
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
                        "\tQuoted from the Big Indonesian Dictionary (KBBI) of the Ministry of Education and Culture, etymologically, manasik comes from Arabic which means a place that is usually visited; worship place; worship time; worship.\r\n\r\n\tMeanwhile, Hajj rituals in the KBBI mean things related to the Hajj pilgrimage, such as ihram, tawaf, sai, and wukuf. Another meaning is a demonstration of the implementation of the Hajj pilgrimage in accordance with its pillars (usually using an imitation Kaaba and so on). implementation of the Hajj pilgrimage, such as the pillars of the Hajj, requirements, obligatory things, things that are Sunnah, and things that are prohibited during the Hajj pilgrimage. This exercise is not only theoretical, but is practiced as closely as possible to the situation in Saudi Arabia.\n",
                        style: TextStyle(
                            fontFamily: 'MontserratRomanBold',
                            color: Color(0xFF235092),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
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
