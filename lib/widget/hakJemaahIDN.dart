import 'package:flutter/material.dart';
import 'package:haji/navigasi/core/app_export.dart';

class hakjemaahidn extends StatefulWidget {
  const hakjemaahidn({Key? key}) : super(key: key);

  @override
  State<hakjemaahidn> createState() => _hakjemaahidnState();
}

class _hakjemaahidnState extends State<hakjemaahidn> {
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
                        imagePath: ImageConstant.imgHak,
                        alignment: Alignment.center,
                      ),
          ),
                ),
              ),
            
         ]),
        
      
    );
  }
}

List<String> steps = [
  '\tPeserta memulai ibadah dengan ihram dari miqat yang telah\t\d   ditentukan. Miqat adalah batas waktu dan tempat melakukan ibadah haji serta umrah. Ada miqat zamani (batas waktu) dan miqat makani (batas tempat).Adapun miqat zamani adalah pada bulan Syawal, Zulkaidah, dan Zulhijah. Sementara miqat makani ada di beberapa kota tergantung dari arah kedatangan jemaah haji. Berikut ini urutan pelaksanaan ihram:\n• Melaksanakan mandi sunnah\n• berwudu\n• Berpakaian ihram\n• Mengerjakan shalat sunnah ihram\n• Mengucapkan niat haji\n• Berangkat ke Arafah sambil membaca talbiyah',
  '\tWukuf adalah berdiam di Arafah yang dilaksanakan pada 9 Zulhijah. Wukuf dimulai setelah matahari tergelincir hingga terbit fajar pada 10 Zulhijah atau Hari Raya Idul Adha.Beberapa amalan yang bisa dikerjakan saat wukuf adalah sebagai berikut:\n• Mengerjakan sholat Zuhur dan Asar dengan cara jamak qasar di awal waktu.\n• Mendengarkan khutbah wukuf.\n• Memperbanyak doa.\n• Memperbanyak zikir.\n• Membaca Al-Qur`an.\n• Mengerjakan sholat Magrib dan Isya dengan cara jamak qasar di awal waktu.',
  '\tMabit berarti bermalam. Muzdalifah adalah tempat yang berada di antara Arafah dan Mina. Setelah tengah malam, jemaah haji berangkat dari Arafah menuju Mina. Di Muzdalifah, jemaah haji berhenti walaupun sebentar. Beberapa amalan yang bisa dikerjakan, antara lain sebagai berikut:\n• Membaca talbiyah. \n• Memperbanyak zikir, istigfar, dan berdoa. \n• Membaca Al-Quran. \n• Mencari kerikil sebanyak 7, 49, dan 70 butir.',
  '\tJemaah kemudian harus melempar jumrah aqabah, yaitu melempar batu ke arah tugu batu di Bukit Aqabah. Pelaksanaannya dilakukan setelah fajar menyingsing atau siang hari pada tanggal 10 Zulhijah dengan 7 butir kerikil. Kemudian jemaah haji menyembelih hewan kurban.',
  '\tTahalul yaitu melepaskan diri dari ihram setelah mengerjakan amalan-amalan haji. Tahap pertama dilakukan setelah selesai melontar jumrah aqabah dengan cara mencukur sekurang-kurangnya tiga helai rambut. Dengan demikian, jemaah boleh mengerjakan semua hal yang dilarang saat ihram, kecuali melakukan hubungan suami istri. Setelahnya, jemaah yang akan melaksanakan tawaf ifadah bisa langsung ke Makkah. Hal-hal yang bisa dikerjakan di Makkah di antaranya:\n• Masuk Masjidil Haram melalui pintu Babussalam. \n• Melakukan thawaf ifadah dengan membaca talbiyah. \n• Selesai tawaf disunahkan mencium Hajar Aswad. \n• Melaksanakan sholat sunah dua rakaat di dekat makam Nabi Ibrahim. \n• Berdoa di Multazam. \n• Melaksanakan sholat sunah dua rakaat di Hijir Ismail. \n• Mengerjakan sai antara Safa dan Marwah sampai tujuh kali. \n• Pada tahalul kedua, jemaah kembali menggunting sekurang-kurangnya tiga helai rambut. Setelah ini, jemaah boleh mengerjakan larangan ihram, termasuk berhubungan suami istri.',
  '\tJemaah kemudian kembali ke Mina untuk mabit selama hari Tasyrik (11, 12, dan 13 Zulhijah). Usai matahari tergelincir pada setiap siang hari Tasyrik, jemaah melontar tiga jumrah, yaitu jumrah ula, wusta, dan aqabah, yang masing-masing sebanyak tujuh kali. Jemaah boleh untuk meninggalkan Mina lebih awal pada tanggal 12 Zulhijah setelah melempar jumrah. Hal ini disebut dengan nafar awwal.Namun akan lebih sempurna jika jemaah meninggalkan Mina pada 13 Zulhijah. Dengan demikian, jemaah haji melontar jumrah selama tiga hari dalam hari Tasyrik yang disebut dengan nafar tsani. Jemaah haji lalu kembali ke Mekkah dan seluruh rangkaian ibadah haji sudah selesai.',
  '\tTawaf wada berarti tawaf perpisahan atau sebagai penutup semua rangkaian ibadah haji. Setelahnya, jemaah diperbolehkan pulang ke kampung halaman atau ke Madinah dahulu bagi yang belum berziarah ke makam Nabi Muhammad SAW. Nah, itulah tadi penjelasan mengenai manasik haji yang merupakan simulasi atau latihan pelaksanaan haji agar calon haji tidak bingung ketika berada di Makkah. Pahami dengan benar urutan dan tata cara di setiap rukunnya, ya!',
  '',
];

List<String> stepImages = [
  'images/1.png',
  'images/2.png',
  'images/3.png',
  'images/4.png',
  'images/5.png',
  'images/6.png',
  'images/7.png',
  'images/done.jpeg'
];
