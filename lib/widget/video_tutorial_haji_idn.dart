import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideotutorialHajiPages extends StatefulWidget {
  const VideotutorialHajiPages({Key? key}) : super(key: key);

  @override
  _VideotutorialPagesState createState() => _VideotutorialPagesState();
}

class _VideotutorialPagesState extends State<VideotutorialHajiPages> {
  // Daftar link video
  List<String> videoLinks = [
    'BQuS99mNVko',
    'o6LTBfENehQ',
    'KBBzXuUJmkI',
    'Bb7hzv5zNSM',
  ];

  // Indeks video terpilih
  int selectedVideoIndex = 0;
  late YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: videoLinks[selectedVideoIndex],
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    _controller!.addListener(_videoPlayerListener);
  }

  void _videoPlayerListener() {
    if (_controller!.value.isFullScreen) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    } else {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 81, 217, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 217, 237),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Panduan Haji',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 39, 92, 176),
                      shadows: [
                        Shadow(
                          color: const Color.fromARGB(179, 255, 255, 255),
                          offset: Offset(5, 7),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  // Menampilkan video terpilih
                  Container(
                    width: 450,
                    height: 250,
                    child: YoutubePlayer(
                      controller: _controller!,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                      onReady: () {
                        _controller!.addListener(() {
                          if (_controller!.value.isPlaying) {
                            _controller!.removeListener(_videoPlayerListener);
                          }
                        });
                      },
                      // onEnterFullScreen dan onExitFullScreen tidak lagi diperlukan
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Video Lainnya',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ]
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: videoLinks.length,
                      itemBuilder: (context, index) {
                        // Mendapatkan URL thumbnail dari ID video
                        String thumbnailUrl =
                            'https://img.youtube.com/vi/${videoLinks[index]}/0.jpg';
                        return GestureDetector(
                          onTap: () {
                            print('Index tapped: $index');
                            setState(() {
                              selectedVideoIndex = index;
                              _controller!.load(videoLinks[selectedVideoIndex]);
                            });
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(thumbnailUrl, fit: BoxFit.cover),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
