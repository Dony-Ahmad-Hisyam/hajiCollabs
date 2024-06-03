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
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize:
                                    12, // Mengatur ukuran teks secara umum
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
                                      'Larangan Ihram', // Teks pertama yang akan dibuat tebal
                                  style: TextStyle(
                                    fontWeight: FontWeight
                                        .bold, // Membuat teks pertama menjadi tebal
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' adalah hal-hal yang tidak boleh dilakukan oleh orang yang sedang ihram, baik saat haji maupun umrah. Tujuannya untuk menjaga kesucian dan kekhusyukan ibadah.\n\nJika seseorang melanggar salah satu larangan maka ia wajib membayar fidyah. Fidyah adalah denda yang harus dibayar untuk menebus pelanggaran larangan ihram.\n\nJika pelanggaran larangan ihram dilakukan dengan sengaja, maka fidyah harus dibayar dua kali lipat. Sehingga penting untuk kamu mengetahui apa saja larangan ihram bagi perempuan dan laki-laki.',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  25), // Memberikan jarak antara RichText dan Stack
                          // Stack untuk menampilkan teks dengan stroke dan teks utama
                          Stack(
                            children: [
                              // Teks dengan stroke
                              Container(
                                child: Text(
                                  'Larangan Ihram Bagi Laki-laki dan Perempuan',
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mochiy Pop One',
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..color = Color(0xFF235092)
                                      ..strokeWidth = 4,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 12,
                                        color: Colors.black.withOpacity(1.0),
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Teks utama (berwarna hitam)
                              Container(
                                child: Text(
                                  'Larangan Ihram Bagi Laki-laki dan Perempuan',
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mochiy Pop One',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize:
                                    12, // Mengatur ukuran teks secara umum
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
                                      '1. Memotong atau mencabut rambut, bulu, atau kuku\n',
                                ),
                                TextSpan(
                                  text:
                                      '2. Memakai wewangian kecuali yang sudah dipakai sebelum\n    melakukan niat ihram.\n',
                                ),
                                TextSpan(
                                  text:
                                      '3. Berburu dan memakan hewan hasil buruan\n',
                                ),
                                TextSpan(
                                  text:
                                      '4. Melakukan hubungan seks dan yang mengundang syahwat\n',
                                ),
                                TextSpan(
                                  text: '5. Melakukan kejahatan dan maksiat\n',
                                ),
                                TextSpan(
                                  text: '6. Bertengkar atau berkelahi\n',
                                ),
                                TextSpan(
                                  text:
                                      '7. Mengucapkan kata-kata kotor atau mencaci.\n',
                                ),
                                TextSpan(
                                  text:
                                      '8. Dilarang menikah, menikahkan ataupun meminang untuk dinikahi.\n',
                                ),
                              ],
                            ),
                          ),
                          // Memberikan jarak antara RichText dan Stack
                          SizedBox(height: 5),
                          // Stack untuk menampilkan teks dengan stroke dan teks utama
                          Stack(
                            children: [
                              // Teks dengan stroke
                              Container(
                                child: Text(
                                  'Larangan Ihram Bagi Perempuan',
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mochiy Pop One',
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..color = Color(0xFF235092)
                                      ..strokeWidth = 4,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 12,
                                        color: Colors.black.withOpacity(1.0),
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Teks utama (berwarna hitam)
                              Container(
                                child: Text(
                                  'Larangan Ihram Bagi Perempuan',
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mochiy Pop One',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize:
                                    12, // Mengatur ukuran teks secara umum
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
                                      'Larangan Ihram bagi perempuan', // Teks pertama yang akan dibuat tebal
                                  style: TextStyle(
                                    fontWeight: FontWeight
                                        .bold, // Membuat teks pertama menjadi tebal
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' adalah hal-hal yang tidak boleh dilakukan oleh perempuan yang sedang ihram, baik haji maupun umrah. Tentunya juga mematuhi larangan yang berlaku umum.\n\nBerikut larangan ihram yang harus dipatuhi oleh jamaah perempuan:\n- Menutup wajah memakai cadar\n- Menutup kedua telapak tangan memakai sarung tangan',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Stack untuk menampilkan teks dengan stroke dan teks utama
                          Stack(
                            children: [
                              // Teks dengan stroke
                              Container(
                                child: Text(
                                  'Larangan Ihram Bagi Laki-laki',
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mochiy Pop One',
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..color = Color(0xFF235092)
                                      ..strokeWidth = 4,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 12,
                                        color: Colors.black.withOpacity(1.0),
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Teks utama (berwarna hitam)
                              Container(
                                child: Text(
                                  'Larangan Ihram Bagi Laki-laki',
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mochiy Pop One',
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2,
                                        color: Colors.black.withOpacity(1.0),
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize:
                                    12, // Mengatur ukuran teks secara umum
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
                                      'Larangan Ihram bagi laki-laki', // Teks pertama yang akan dibuat tebal
                                  style: TextStyle(
                                    fontWeight: FontWeight
                                        .bold, // Membuat teks pertama menjadi tebal
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' adalah hal-hal yang tidak boleh dilakukan oleh pria yang sedang ihram, baik haji maupun umrah. Tentunya juga mematuhi larangan yang berlaku umum.\n\nBerikut larangannya tambahan untuk laki-laki:\n- Memakai pakaian yang dijahit\n- Memakai tutup kepala\n- Memakai sarung tangan\n- Memakai alas kaki\n',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
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
