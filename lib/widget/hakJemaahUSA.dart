import 'package:flutter/material.dart';
import 'package:haji/navigasi/core/app_export.dart';

class hakjemaahusa extends StatefulWidget {
  const hakjemaahusa({Key? key}) : super(key: key);

  @override
  State<hakjemaahusa> createState() => _hakjemaahusaState();
}

class _hakjemaahusaState extends State<hakjemaahusa> {
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
                  'images/Hak jemaah page USA.jpg',
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
                          // RichText with description content
                          RichText(
                            textAlign: TextAlign
                                .justify, // Text alignment set to justify
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize: 16, // General text size setting
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
                                      'The Head of the Ministry of Religious Affairs Office of Anambas, Dr. H. Erizal, MH, explained about the Rights and Obligations of Hajj Pilgrims.\n\nIn his material presentation, Dr. H. Erizal, MH, conveyed: The Rights of Hajj Pilgrims in ',
                                ),
                                TextSpan(
                                  text:
                                      'Law Number 8 of 2019 concerning the Implementation of Hajj and Umrah are contained in Article 6,', // First text to be bold
                                  style: TextStyle(
                                    fontWeight: FontWeight
                                        .bold, // Making the first text bold
                                  ),
                                ),
                                TextSpan(
                                  text: ' which includes:',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 20), // Space between RichText and Stack
                          // Stack to display text with stroke and main text
                          RichText(
                            textAlign: TextAlign
                                .justify, // Text alignment set to justify
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'MontserratRomanBold',
                                color: Color(0xFF235092),
                                fontSize: 16, // General text size setting
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
                                      '1. Receive a deposit receipt from BPS Bipih \n    and a Quota Number from the Minister\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '2. Receive hajj rituals guidance and other\n    materials in the homeland, during the\n    journey, and in Saudi Arabia\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '3. Receive accommodation, food, and health\n    services\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text: '4. Receive transportation services\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '5. Receive protection as Indonesian hajj\n    pilgrims\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '6. Receive information on the implementation\n    of Hajj\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '7. Receive life insurance according to sharia\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '8. Receive hajj identity and other documents\n    necessary for the implementation\n    of Hajj\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '9. Choose PIHK for Special Hajj Pilgrims\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '10. Receive special services for pilgrims with\n       disabilities\n',
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                      height:
                                          25), // Add spacing between TextSpans
                                ),
                                TextSpan(
                                  text:
                                      '11. Transfer the quota number to husband, wife, father, mother, biological child or sibling designated and or agreed upon in writing by the family due to death or permanent illness according to the health statement of the Hajj Pilgrim\n',
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
