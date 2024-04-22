import 'package:flutter/material.dart';

class TataCaraIDNPage extends StatefulWidget {
  const TataCaraIDNPage({Key? key}) : super(key: key);

  @override
  State<TataCaraIDNPage> createState() => _TataCaraIDNPageState();
}

class _TataCaraIDNPageState extends State<TataCaraIDNPage> {
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
              'images/tataIDN.png',
              alignment: Alignment.topCenter,
            ),
          ),
          // Kotak isi deskripsi
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.51,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: steps.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          stepImages[index],
                          alignment: Alignment.topCenter,
                        ),
                        Text(
                          steps[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF235092),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
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
}

List<String> steps = [
  '\tPeserta memulai ibadah dengan ihram dari miqat yang telah ditentukan. Miqat adalah batas waktu dan tempat melakukan ibadah haji serta umrah. Ada miqat zamani (batas waktu) dan miqat makani (batas tempat).Adapun miqat zamani adalah pada bulan Syawal, Zulkaidah, dan Zulhijah. Sementara miqat makani ada di beberapa kota tergantung dari arah kedatangan jemaah haji. Berikut ini urutan pelaksanaan ihram:\n• Melaksanakan mandi sunnah\n• berwudu\n• Berpakaian ihram\n• Mengerjakan shalat sunnah ihram\n• Mengucapkan niat haji\n• Berangkat ke Arafah sambil membaca talbiyah',
  'Wukuf adalah berdiam di Arafah yang dilaksanakan pada 9 Zulhijah. Wukuf dimulai setelah matahari tergelincir hingga terbit fajar pada 10 Zulhijah atau Hari Raya Idul Adha.Beberapa amalan yang bisa dikerjakan saat wukuf adalah sebagai berikut:\n• Mengerjakan sholat Zuhur dan Asar dengan cara jamak qasar di awal waktu.\n• Mendengarkan khutbah wukuf.\n• Memperbanyak doa.\n• Memperbanyak zikir.\n• Membaca Al-Qur`an.\n• Mengerjakan sholat Magrib dan Isya dengan cara jamak qasar di awal waktu.',
  'Berpakaian ihram',
  'Mengerjakan shalat sunnah ihram',
  'Mengucapkan niat haji',
  'Berangkat ke Arafah sambil membaca talbiyah',
  'Berangkat ke Arafah sambil membaca talbiyah',
];

List<String> stepImages = [
  'images/1.png',
  'images/2.png',
  'images/3.png',
  'images/4.png',
  'images/5.png',
  'images/6.png',
  'images/7.png',
];
