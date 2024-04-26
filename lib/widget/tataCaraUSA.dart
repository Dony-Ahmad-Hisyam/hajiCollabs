import 'package:flutter/material.dart';

class TataCaraUSAPage extends StatelessWidget {
  const TataCaraUSAPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Image.asset(
              'images/tataCaraUSA.png',
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  steps.length,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Image.asset(
                          stepImages[index],
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.8),
                        child: Text(
                          steps[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF235092),
                          ),
                        ),
                      ),
                      SizedBox(height: 10), // Adjust this value as needed
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> steps = [
  '\tParticipants begin the pilgrimage by assuming ihram from the designated miqat. Miqat is the time and place for performing the Hajj and Umrah pilgrimage. There are temporal miqat (time limits) and spatial miqat (place limits). Temporal miqat occurs in the months of Shawwal, Dhul Qadah, and Dhul Hijjah. Spatial miqat depends on the direction from which the pilgrims arrive. The sequence of ihram is as follows:\n• Performing the sunnah bath\n• Performing ablution\n• Wearing ihram attire\n• Performing the sunnah prayer of ihram\n• Uttering the intention for Hajj\n• Departing to Arafah while reciting talbiyah',
  '\tWukuf is the act of staying in Arafah, which takes place on the 9th of Dhul Hijjah. Wukuf begins after sunset and lasts until dawn on the 10th of Dhul Hijjah or the Day of Eid al-Adha. Some deeds that can be performed during wukuf are as follows:\n• Performing the Dhuhr and Asr prayers combined and shortened at the beginning of their respective times.\n• Listening to the wukuf sermon.\n• Making abundant supplications.\n• Engaging in remembrance (zikr).\n• Reciting the Quran.\n• Performing the Maghrib and Isha prayers combined and shortened at the beginning of their respective times.',
  '\tMabit means spending the night. Muzdalifah is the area between Arafah and Mina. After midnight, pilgrims depart from Arafah to Mina. In Muzdalifah, pilgrims pause briefly. Some actions that can be done include:\n• Reciting talbiyah.\n• Engaging in remembrance, seeking forgiveness, and supplicating.\n• Reciting the Quran.\n• Collecting pebbles, seven each for the rituals.',
  '\tNext, pilgrims must stone the Jamratul Aqabah, throwing stones towards the stone pillar at Mount Aqabah. This is done after dawn or in the afternoon on the 10th of Dhul Hijjah with seven pebbles. Afterward, pilgrims perform the animal sacrifice.',
  '\tTahalul is the release from ihram after completing the Hajj rites. The first step is shaving at least three hairs after stoning Jamratul Aqabah. Following this, pilgrims can engage in activities prohibited during ihram, except marital relations. They then proceed to perform the Tawaf Ifadah in Makkah. Activities in Makkah include:\n• Entering Masjid al-Haram through Babussalam gate.\n• Performing Tawaf Ifadah while reciting talbiyah.\n• Optionally kissing the Black Stone after Tawaf.\n• Performing two Sunnah rakahs near the Maqam Ibrahim.\n• Supplicating at Multazam.\n• Performing two Sunnah rakahs near the Hijr Ismail.\n• Performing Sai between Safa and Marwah seven times.\n• During the second Tahalul, pilgrims again shave at least three hairs. After this, all ihram restrictions are lifted, including marital relations.',
  '\tPilgrims return to Mina for Mabit during the Tashreeq days (11th, 12th, and 13th of Dhul Hijjah). After sunset each day, pilgrims stone the three pillars (Jamarat) - Ula, Wusta, and Aqabah - seven times each. Pilgrims can leave Mina early on the 12th of Dhul Hijjah after stoning, known as Nafar Awwal. However, its more complete to leave on the 13th of Dhul Hijjah, called Nafar Tsani, stoning for three days during Tashreeq. Pilgrims then return to Makkah, completing all Hajj rituals.',
  '\tTawaf Wada is the farewell circumambulation, marking the conclusion of Hajj rites. After this, pilgrims are allowed to return home or visit Madinah for those who haven’t visited the Prophet Muhammads grave. That concludes the explanation of Hajj rituals, serving as a simulation or practice for pilgrims to understand the sequence and procedures in each pillar.'
];

List<String> stepImages = [
  'images/11.png',
  'images/12.png',
  'images/13.png',
  'images/14.png',
  'images/5.png',
  'images/16.png',
  'images/7.png',
  'images/done.jpeg'
];
