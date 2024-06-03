import 'package:flutter/material.dart';

class definisiPage extends StatefulWidget {
  const definisiPage({Key? key}) : super(key: key);

  @override
  State<definisiPage> createState() => _definisiPageState();
}

class _definisiPageState extends State<definisiPage> {
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
              'images/gambar.png',
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
                        "\tDikutip dari Kamus Besar Bahasa Indonesia (KBBI) Kemdikbud, secara etimologi, manasik berasal dari bahasa Arab yang berarti tempat yang biasa dikunjungi; tempat ibadah; waktu ibadah; ibadah.\r\n\r\n\tSedangkan manasik haji dalam KBBI artinya adalah hal-hal yang berhubungan dengan ibadah haji, seperti ihram, tawaf, sai, dan wukuf. Arti lainnya adalah peragaan pelaksanaan ibadah haji sesuai dengan rukun-rukunnya (biasanya menggunakan Ka'bah tiruan dan sebagainya).\r\n\r\n\tDilansir dari situs Kemenag Jambi, jemaah calon haji yang mengikuti manasik haji akan dilatih tentang tata cara pelaksanaan ibadah haji, seperti rukun haji, persyaratan, hal wajib, hal yang disunahkan, maupun hal-hal yang dilarang selama pelaksanaan ibadah haji. Latihan ini tak hanya teori, namun dipraktikkan semirip mungkin dengan situasi di Arab Saudi.\n",
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
