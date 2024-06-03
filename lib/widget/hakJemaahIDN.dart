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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Image.asset(
                  'images/Hak jemaah page IDN.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                SizedBox(height: 20), // Added spacing between image and text
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.white, // Set the background color to white
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // RichText dengan konten deskripsi
                          RichText(
                            textAlign: TextAlign
                                .justify, // Text alignment set to justify
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize:
                                    16, // Mengatur ukuran teks secara umum
                                shadows: [
                                  Shadow(
                                    blurRadius: 2,
                                    color: Colors.black.withOpacity(0.2),
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Kepala Kantor Kementerian Agama Anambas, Dr. H. Erizal, MH menjelaskan mengenai Hak Dan Kewajiban Jemaah Haji.\n\nDalam pembahasan materi Dr. H. Erizal, MH menyampaikan: Hak Jemaah Haji dalam ',
                                ),
                                TextSpan(
                                  text:
                                      'Undang-Undang Nomor 8 tahun 2019 tentang Penyelenggaraan Haji dan Umrah terdapat pada pasal 6,', // Teks pertama yang akan dibuat tebal
                                  style: TextStyle(
                                    fontWeight: FontWeight
                                        .bold, // Membuat teks pertama menjadi tebal
                                  ),
                                ),
                                TextSpan(
                                  text: ' meliputi:',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  20), // Memberikan jarak antara RichText dan Stack
                          // Stack untuk menampilkan teks dengan stroke dan teks utama
                          RichText(
                            textAlign: TextAlign
                                .justify, // Text alignment set to justify
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize:
                                    16, // Mengatur ukuran teks secara umum
                                shadows: [
                                  Shadow(
                                    blurRadius: 2,
                                    color: Colors.black.withOpacity(0.2),
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      '1. Mendapat bukti setoran dari BPS Bipih dan\n    Nomor Porsi dari Menteris\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '2. Mendapat bimbingan manasik haji dan\n    materi lainnya di tanah air, dalam\n    perjalanan , dan Arab Saudi\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '3. Mendapat pelayanan akomodasi, konsumsi\n    dan Kesehatan\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text: '4. Mendapat pelayanan transportasi\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '5. Mendapat pelindungan sebagai jamaah haji\n    Indonesia\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '6. Mendapat informasi pelaksanaan Ibadah\n    Haji\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '7. Mendapat asuransi jiwa sesuai dengan\n    syariat\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '8. Mendapat identitas haji dan dokumen\n    lainnya yang diperlukan untuk pelaksanaan\n    Ibadah Haji\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '9. Memilih PIHK untuk Jemaah Haji Khusus\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '10. Mendapat pelayanan khusus bagi Jemaah\n       Haji penyandang disabilitas\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '11. Melimpahkan nomor porsi kepada suami,\n       istri, ayah, ibu, anak kandung atau saudara\n       kandung yang ditunjuk dan atau disepakati\n       secara tertulis oleh keluarga dengan\n       alasan meninggal dunia atau sakit\n       permanen menurut keterangan kesehatan\n       Jemaah Haji\n',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
