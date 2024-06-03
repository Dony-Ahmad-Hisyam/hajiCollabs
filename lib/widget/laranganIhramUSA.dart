import 'package:flutter/material.dart';

class prohibitionsOfIhramPage extends StatefulWidget {
  const prohibitionsOfIhramPage({Key? key}) : super(key: key);

  @override
  State<prohibitionsOfIhramPage> createState() =>
      _prohibitionsOfIhramPageState();
}

class _prohibitionsOfIhramPageState extends State<prohibitionsOfIhramPage> {
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
                  'images/Prohibition of Ihram.png',
                  alignment: Alignment.topCenter,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'MontserratRomanBold',
                              color: Color(0xFF235092),
                              fontSize: 12,
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
                                text: 'Prohibitions of Ihram',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              TextSpan(
                                  text:
                                      ' are things that are not allowed to be done by people in ihram, both during Hajj and Umrah. The purpose is to maintain the sanctity and devotion of worship.\n\nIf someone violates one of the prohibitions, they must pay fidyah. Fidyah is a fine that must be paid to atone for the violation of ihram prohibitions.\n\nIf the violation of ihram prohibitions is done intentionally, then fidyah must be paid twice. So it is important for you to know what are the prohibitions of ihram for women and men.',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Stack(
                          children: [
                            Container(
                              child: Text(
                                'Prohibitions of Ihram for Men and Women',
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
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
                            Container(
                              child: Text(
                                'Prohibitions of Ihram for Men and Women',
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
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
                              fontSize: 16,
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
                                    '1. Cutting or plucking hair, fur, or nails\n',
                              ),
                              TextSpan(
                                text:
                                    '2. Using fragrance except that worn before making ihram intention.\n',
                              ),
                              TextSpan(
                                text: '3. Hunting and eating game animals\n',
                              ),
                              TextSpan(
                                text:
                                    '4. Engaging in sexual intercourse and anything that arouses desire\n',
                              ),
                              TextSpan(
                                text: '5. Committing sins and transgressions\n',
                              ),
                              TextSpan(
                                text: '6. Quarreling or fighting\n',
                              ),
                              TextSpan(
                                text: '7. Uttering foul language or cursing.\n',
                              ),
                              TextSpan(
                                text:
                                    '8. Prohibited from getting married, marrying, or proposing to be married.\n',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              child: Text(
                                'Prohibitions of Ihram for Women',
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
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
                            Container(
                              child: Text(
                                'Prohibitions of Ihram for Women',
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
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
                              fontSize: 16,
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
                                text: 'Prohibitions of Ihram for women',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              TextSpan(
                                text:
                                    ' are things that are not allowed to be done by women in ihram, both during Hajj and Umrah. Of course, also comply with the general prohibitions.\n\nHere are the prohibitions that must be obeyed by female pilgrims:\n- Covering the face with a veil\n- Covering both palms with gloves',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Stack(
                          children: [
                            Container(
                              child: Text(
                                'Prohibitions of Ihram for Men',
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
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
                            Container(
                              child: Text(
                                'Prohibitions of Ihram for Men',
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
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
                              fontSize: 16,
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
                                text: 'Prohibitions of Ihram for men',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' are things that are not allowed to be done by men in ihram, both during Hajj and Umrah. Of course, also comply with the general prohibitions.\n\nHere are additional prohibitions for men:\n- Wearing sewn clothes\n- Wearing headgear\n- Wearing gloves\n- Wearing footwear\n',
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
        ],
      ),
    );
  }
}
