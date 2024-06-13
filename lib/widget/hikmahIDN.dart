import 'package:flutter/material.dart';

class hikmahidn extends StatefulWidget {
  const hikmahidn({Key? key}) : super(key: key);

  @override
  State<hikmahidn> createState() => _hikmahidnState();
}

// Daftar kalimat
final List<Map<String, String>> kalimatList = [
  {
    "judul": "Menyaksikan Rumah Allah (Baitullah) Secara Langsung",
    "deskripsi1":
        "Ibadah Haji menjadi cara bagi seorang muslim untuk dapat singgah ke Baitullah atau Ka'bah yang terdapat di dalam Masjidil Haram. Selain berkunjung ke rumah Allah, kaum muslim dapat melihat situs-situs Islam bersejarah lainnya seperti makam Nabi Ibrahim dan lainnya",
    "deskripsi2":
        "Hikmah haji ini dapat mengajarkan jamaah untuk lebih menghayati nilai keimanan, keikhlasan, ketakwaan dan menghargai perjuangan Rasulullah SAW beserta sahabatnya dalam menyebarkan ajaran Islam."
  },
  {
    "judul": "Sebagai pengingat umat muslim bersatu",
    "deskripsi1":
        "Haji merupakan ibadah yang dapat mempertemukan banyak umat muslim dari berbagai penjuru dunia. Oleh karenanya, ibadah haji menjadi pengingat bahwa muslim harus bersatu dan memang merupakan kesatuan.",
    "deskripsi2":
        "Pakaian ihram yang seragam menggambarkan bahwa tidak ada yang membedakan jamaah haji antara satu dengan yang lainnya. Hal yang membedakan tidak lain hanyalah ketakwaan mereka masing-masing."
  },
  {
    "judul": "Haji adalah penyempurna ibadah",
    "deskripsi1":
        "Sebagai bagian dari rukun Islam, haji adalah penyempurna kelima ibadah yang terkandung di dalamnya. Seseorang yang melakukan ibadah haji tentunya harus sudah melakukan empat ibadah lainnya yakni syahadat, shalat, zakat, dan puasa",
    "deskripsi2":
        "Ibadah haji sebagai penyempurna pun memiliki makna kepatuhan hamba kepada Allah SWT dan Rasulullah SAW."
  },
  {
    "judul": "Menjadi Penyemangat dalam Beribadah",
    "deskripsi1":
        "Selain sebagai ibadah, banyak orang yang menyebut bahwa haji adalah perjalanan spiritual. Umat muslim yang telah menunaikan ibadah haji biasanya menjadi lebih semangat beribadah ketika pulang dari Makkah.",
    "deskripsi2":
        "Dalam hal ini, ibadah haji menjadi kesempatan yang besar bagi umat Islam untuk menyatukan tekad dan semangat kebenaran dalam Allah beribadah juga menyebarkan terhadap sesama manusia."
  },
];

class _hikmahidnState extends State<hikmahidn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'images/hikmaidn2.png',
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Kewajiban melaksanakan ibadah haji dan umrah diturunkan langsung oleh Allah SWT kepada Rasulullah SAW.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Turunnya kewajiban tersebut berkaitan dengan hikmah haji yang dapat dirasakan oleh umat muslim yang melaksanakannya.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: List.generate(
                          kalimatList.length,
                          (index) => Column(
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.9,
                                ),
                                child: Card(
                                  elevation: 0,
                                  color: Colors.white,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFF235092),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            kalimatList[index]["judul"]!,
                                            style: TextStyle(
                                              fontFamily: 'MontserratRomanBold',
                                              color: Color(0xFF235092),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            kalimatList[index]["deskripsi1"]!,
                                            style: TextStyle(
                                              fontFamily: 'MontserratRomanBold',
                                              color: Color(0xFF235092),
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            kalimatList[index]["deskripsi2"]!,
                                            style: TextStyle(
                                              fontFamily: 'MontserratRomanBold',
                                              color: Color(0xFF235092),
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
