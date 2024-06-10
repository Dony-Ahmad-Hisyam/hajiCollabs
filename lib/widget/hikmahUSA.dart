import 'package:flutter/material.dart';

class hikmahusa extends StatefulWidget {
  const hikmahusa({Key? key}) : super(key: key);

  @override
  State<hikmahusa> createState() => _hikmahidnState();
}

// Daftar kalimat
final List<Map<String, String>> kalimatList = [
  {
    "judul": "Witnessing the House of Allah (Baitullah) Directly",
    "deskripsi1":
        "The Hajj pilgrimage is a way for a Muslim to stop by the Baitullah or Kaaba in the Grand Mosque. Apart from visiting the house of Allah, Muslims can see other historical Islamic sites such as the tomb of the Prophet Abraham and others. ",
    "deskripsi2": "The wisdom of this Hajj can teach pilgrims to better appreciate the values of faith, sincerity, piety and appreciate the struggle of the Prophet Muhammad and his friends in spreading the teachings of Islam."
  },
  {
    "judul": "As a reminder that Muslims are united",
    "deskripsi1":
        "Hajj is a pilgrimage that can bring together many Muslims from various parts of the world. Therefore, the Hajj is a reminder that Muslims must be united and are indeed a unit. ",
    "deskripsi2": "Uniform ihram clothing shows that there is nothing that differentiates Hajj pilgrims from one another. The only thing that differentiates them is their devotion to each other."
  },
  {
    "judul": "Hajj is the completion of worship",
    "deskripsi1":
        "As part of the pillars of Islam, the Hajj is the completion of the five acts of worship contained in it. A person who performs the Hajj must of course have performed the other four acts of worship, namely the creed, prayer, zakat and fasting.",
    "deskripsi2": "The Hajj pilgrimage as a completion also means a servant's obedience to Allah SWT and Rasulullah SAW."
  },
  {
    "judul": "Become an Encouragement in Worship",
    "deskripsi1": "Apart from being a form of worship, many people say that the Hajj is a spiritual journey. Muslims who have completed the Hajj pilgrimage usually become more enthusiastic about worship when they return from Mecca.",
    "deskripsi2": "In this case, the Hajj pilgrimage is a great opportunity for Muslims to unite their determination and enthusiasm in worship and spread the truth of Allah to fellow humans."
  },
];

class _hikmahidnState extends State<hikmahusa> {
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
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'images/hikmausa2.png',
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "The obligation to carry out the Hajj and Umrah was revealed directly by Allah SWT to Rasulullah SAW.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "The decline in this obligation is related to the wisdom of the Hajj which can be felt by Muslims who carry it out.",
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
                                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                          SizedBox(height: 8,),
                                          Text(
                                            kalimatList[index]["deskripsi1"]!,
                                            style: TextStyle(
                                              fontFamily: 'MontserratRomanBold',
                                              color: Color(0xFF235092),
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                          SizedBox(height: 8,),
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
