import 'package:flutter/material.dart';

class DoaNiatIDNPage extends StatefulWidget {
  const DoaNiatIDNPage({Key? key}) : super(key: key);

  @override
  State<DoaNiatIDNPage> createState() => _DoaNiatIDNPageState();
}

class _DoaNiatIDNPageState extends State<DoaNiatIDNPage> {
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
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      stepImages[index],
                      alignment: Alignment.topCenter,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            steps[index],
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF235092),
                            ),
                          ),
                          if (index != steps.length - 1)
                            Divider(color: Color(0xFF235092)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              },
              childCount: steps.length,
            ),
          ),
        ],
      ),
    );
  }
}

List<String> steps = [
  '',
  'Artinya : “Dengan nama Allah, aku bertawakal kepada Allah. Tidak ada daya dan kekuatan kecuali dengan (pertolongan) Allah. “',
  'Artinya : “Dengan (menyebut) nama Allah pada waktu berlayar dan berlabuhnya. Sesungguhnya Tuhanku Maha Pengampun, Maha Penyayang (QS Hud: 41).”',
  'Artinya   :  “Dengan menyebut nama Allah yang Maha Pengasih lagi Maha Penyayang. Allah Mahabesar. Allah Mahabesar. Allah Mahabesar.”',
  'Artinya : “Ya Allah, aku memohon kepada-Mu kebaikan tempat ini dan kebaikan penduduknya serta kebaikan apa pun yang ada di dalamnya. Aku berlindung kepada-Mu dari kejahatan tempat ini dan kejahatan penduduknya serta kejahatan apa pun yang ada di dalamnya.”',
  'Artinya  :  “Ya Allah aku mengharamkan rambut, kulit, tubuh, dan seluruh anggota tubuhku dari semua yang Kauharamkan bagi seorang yang sedang berihram, demi mengharapkan ridha-Mu semata, wahai Tuhan pemelihara seluruh keberadaan.”',
  'Artinya   :  “Aku datang memenuhi panggilan-Mu, ya Allah. Aku datang memenuhi panggilan-Mu. Aku datang memenuhi panggilan-Mu. Tiada sekutu bagi-Mu. Aku datang memenuhi panggilan-Mu. Sungguh, segala puji, nikmat, dan segala kekuasaan adalah milik-Mu. Tiada sekutu bagi-Mu.”',
  'Artinya   :  “Ya Allah, ini adalah tanah haram-Mu dan tempat aman-Mu. Haramkanlah dagingku, darahku, rambutku, dan kulitku dari api neraka. Selamatkanlah aku dari siksa-Mu pada hari ketika Engkau membangkitkan hamba-hamba-Mu. Jadikan aku termasuk di antara kekasih-Mu dan hamba-hamba yang taat pada-Mu.”',
  'Artinya  : “Ya Allah Engkaulah Dzat yang memberi keselamatan (kesejahteraan), dari-Mu keselamatan datang, maka hidupkanlah kami ya Allah dengan selamat (sejahtera), masukkan kami ke dalam surga rumah keselamatan. Mahasuci Engkau, Mahaluhur Engkau, wahai Tuhan sang pemulik keagungan dan kemuliaan. Ya Allah bukakanlah untukku pintu rahmat dan ampunan-Mu. Masukanlah aku ke dalam rahmat dan ampunan-Mu itu. Dengan nama Allah. Segala puji bagi Allah. Semoga rahmat dan keselamatan terlimpah untuk Rasulullah.”',
  'Artinya : “Ya Allah, tambahkanlah kemuliaan, kehormatan, keagungan dan kehebatan pada Baitullah ini; dan tambahkanlah pula kepada orang-orang yang memuliakan, menghormati, dan mengagungkannya di antara mereka yang berhaji atau yang berumrah kemuliaan, kehormatan, kebesaran, dan kebaikan.”',
  'Artinya  : “Mahasuci Allah. Segala pujian hanya pantas disanjungkan kepada Allah. Tiada Tuhan selain Allah. Allah Mahabesar. Tidak ada daya dan kekuatan kecuali (pertolongan) dari Allah yang Mahaluhur lagi Mahaagung.”',
  'Artinya : “Allah Mahabesar, Allah Mahabesar, Allah Mahabesar, Allah Mahabesar, Mahabesar Allah segala puji bagi-Nya, Mahasuci Allah baik saat pagi maupun petang.”',
  'Artinya : “Ya Allah, tetapkanlah kebaikan untukku lantaran setiap helai rambut ini, hapuslah keburukan dari diriku lantaran rambut ini, dan angkatlah derajatku di sisi-Mu.”',
  'Artinya : “Ya Allah, hanya kepada-Mulah aku menghadap, dengan-Mulah aku berpegang teguh, pada-Mulah aku berserah diri. Ya Allah, jadikanlah aku menjadi bagian dari orang yang hari ini Engkau banggakan di hadapan Malaikat-Mu. Sesungguhnya Engkau Mahakuasa atas segala sesuatu.”',
  'Artinya  :  “Ya Allah, segala puji bagi-Mu seperti Engkau memuji (diri-Mu) dan pujian terbaik yang kami ucapkan. Ya Allah, bagi-Mu shalatku, ibadahku, hidupku, dan matiku, dan kepada-Mu tempat kembaliku dan kepada-Mulah pemeliharaan apa yang aku tinggalkan. Ya Allah, aku berlindung pa da-Mu dari siksa kubur dan keragu-raguan dalam hati serta kesulitan-kesulitan dalam segala urusan. Ya Allah, aku berlindung pada-Mu dari kejahatan yang diembuskan oleh angin.”',
  'Artinya : “Ya Allah, sesungguhnya di Muzdalifah ini telah berkumpul bermacam-macam bahasa yang memohon kepada-Mu berbagai hajat yang beraneka ragam. Maka, masukkanlah aku ke dalam golongan orang yang berdoa lalu Engkau kabulkan, golongan orang yang berserah diri pada-Mu lalu Engkau lindungi dia, wahai Tuhan yang Maha Pengasih dari segala yang pengasih.”',
  'Artinya : “Ya Allah, tempat ini adalah di Mina, anugerahkanlah kepadaku apa yang Engkau telah anugerahkan kepada orang-orang yang selalu dekat dan taat kepada-Mu.”',
  'Artinya : “Dengan menyebut nama Allah, Allah Mahabesar. Laknat bagi setan dan keridhaan bagi Allah yang Maha Pengasih. Ya Allah, jadikanlah hajiku ini diterima dan usahaku dibalas pahala.”',
  'Artinya : “Ya Allah, negeri ini adalah tanah haram rasul-Mu. Jadikanlah ia penjaga bagiku dari neraka, pengaman dari siksa dan buruknya perhitungan amal.”',
  'Artinya  :  “Dengan menyebut nama Allah Yang Maha Pengasih dan Maha Penyayang. Aku berlindung kepada Allah yang Mahaagung, Dzat-Nya yang Mahamulia, dan kekuasaan-Nya Yang Mahadahulu, dari godaan setan yang terkutuk. Ya Allah, bukakanlah bagiku segala pintu rahmat-Mu.”',
  'Artinya  : “Tidak ada Tuhan kecuali Allah, Tuhan yang Esa, tidak ada sekutu bagi-Nya. Dia pemilik seluruh kerajaan dan segala pujian. Dia Mahakuasa atas segala sesuatu. Semoga kami termasuk orang-orang yang kembali, orang-orang yang ahli taubat, ahli ibadah, ahli sujud dan ahli memuji Tuhan kami. Allah menepati janji-Nya, menolong hamba-Nya, dan mengalahkan sendiri musuh-musuh -Nya.”',
];

List<String> stepImages = [
  'images/d1.png',
  'images/d2.png',
  'images/d3.png',
  'images/d4.png',
  'images/d5.png',
  'images/d7.png',
  'images/d8.png',
  'images/d9.png',
  'images/d10.png',
  'images/d11.png',
  'images/d12.png',
  'images/d13.png',
  'images/d14.png',
  'images/d15.png',
  'images/d16.png',
  'images/d17.png',
  'images/18.png',
  'images/19.png',
  'images/d20.png',
  'images/d21.png',
  'images/d22.png',
];
