import 'package:flutter/material.dart';

class DoaNiatUSAPage extends StatefulWidget {
  const DoaNiatUSAPage({Key? key}) : super(key: key);

  @override
  State<DoaNiatUSAPage> createState() => _DoaNiatUSAPageState();
}

class _DoaNiatUSAPageState extends State<DoaNiatUSAPage> {
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
  'Meaning: "In the name of Allah, I put my trust in Allah. There is no power and strength except with (the help of) Allah. “',
  'Meaning: "By (mentioning) the name of Allah when sailing and anchoring. Indeed, my Lord is Forgiving, Most Merciful (QS Hud: 41).”',
  'Meaning: "In the name of Allah, the Most Gracious, the Most Merciful. Allah is the Greatest. Allah is the Greatest. Allah is the Greatest."',
  'Meaning: "O Allah, I ask You for the goodness of this place and the goodness of its inhabitants and the goodness of whatever is in it. I seek refuge in You from the evil of this place and the evil of its inhabitants and whatever evil is in it.”',
  'Meaning: "O Allah, I have forbidden my hair, skin, body and all parts of my body from everything that You have forbidden for someone who is in ihram, for the sake of seeking Your pleasure alone, O Lord, the sustainer of all existence."',
  'Meaning: "I have come to fulfill Your call, O Allah. I come to answer Your call. I come to answer Your call. There is no partner for You. I come to fulfill Your call. Indeed, all praise, favors and all power are Yours. There is no partner for You."',
  'Meaning: "O Allah, this is Your forbidden land and Your safe place. Forbid my flesh, my blood, my hair and my skin from the fire of hell. Save me from Your torment on the day when You raise Your servants. Make me among Your beloved and Your obedient servants."',
  'Meaning: "O Allah, You are the One who gives salvation (prosperity), from You salvation comes, so bring us to life, O Allah, safely (prosperously), enter us into heaven, the home of safety. Glory be to You, Glory to You, O Lord, possessor of majesty and glory. O Allah, open for me the door of Your mercy and forgiveness. Enter me into Your mercy and forgiveness. In the name of Allah. All praises be to Allah. May mercy and safety be abundant for the Messenger of Allah."',
  'Meaning: "O Allah, add glory, honor, majesty and greatness to this Baitullah; and add to those who glorify, honor and exalt him among those who perform Hajj or those who perform Umrah glory, honor, greatness and goodness."',
  'Meaning: "Glory to Allah. All praise is due only to Allah. There is no God but Allah. Allah is the Greatest. There is no power and strength except (help) from Allah, the Most Sublime, the Most Great."',
  'Meaning: "Allah is the Greatest, Allah is the Greatest, Allah is the Greatest, Allah is the Greatest, Allah is the Greatest, praise be to Him, Glory be to Allah both morning and evening."',
  'Meaning: "O Allah, determine goodness for me because of every strand of this hair, erase the bad things from me because of this hair, and raise my rank with You."',
  'Meaning: "O Allah, only to You I turn, to You I hold fast, to You I surrender. O Allah, make me part of the people that today You are proud of in front of Your Angels. Indeed, You are Almighty over all things."',
  'Meaning: "O Allah, all praise is due to You as You praise (Yourself) and the best praise that we can say. O Allah, to You is my prayer, my worship, my life and my death, and to You is my return and to You is the preservation of what I leave behind. O Allah, I seek refuge in You from the torment of the grave and doubts in my heart and difficulties in all matters. O Allah, I seek refuge in You from the evil that is blown by the wind."',
  'Meaning: "O Allah, indeed in Muzdalifah, various languages ​​have gathered, asking You for various wishes. So, put me in the group of those who pray and then You grant it, the group of people who surrender to You and then You protect them, O God who is most merciful of all the merciful."',
  'Meaning: "O Allah, this place is in Mina, grant me what You have bestowed on those who are always close and obedient to You."',
  'Meaning: "In the name of Allah, Allah is the Greatest. Curse for Satan and pleasure for Allah, the Most Merciful. O Allah, make my Hajj accepted and my efforts rewarded."',
  'Meaning: "O Allah, this land is the forbidden land of Your Messenger. Make him a guardian for me from hell, a safeguard from torment and bad deeds."',
  'Meaning: "In the name of Allah, the Most Gracious and Most Merciful. I seek refuge in the Almighty Allah, His Almighty Essence, and His Almighty power, from the temptations of the cursed devil. O Allah, open for me all the doors of Your mercy."',
  'Meaning: "There is no god except Allah, the One God, He has no partners. He owns the whole kingdom and all praise. He is Almighty over everything. May we be among those who return, those who are experts in repentance, experts in worship, experts in prostration and experts in praising our Lord. Allah keeps His promises, helps His servants, and defeats His enemies Himself.”',
];

List<String> stepImages = [
  'images/ds1.png',
  'images/ds2.png',
  'images/ds3.png',
  'images/ds4.png',
  'images/ds5.png',
  'images/ds6.png',
  'images/ds7.png',
  'images/ds8.png',
  'images/ds9.png',
  'images/ds10.png',
  'images/ds11.png',
  'images/ds12.png',
  'images/ds13.png',
  'images/ds14.png',
  'images/ds15.png',
  'images/ds16.png',
  'images/ds17.png',
  'images/ds18.png',
  'images/ds19.png',
  'images/ds20.png',
  'images/ds21.png',
];
