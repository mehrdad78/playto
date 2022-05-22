import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  final audioPlayer = AudioCache();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double height = queryData.size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/play.jpg",
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) => SizedBox(
                height: height * 0.12,
                child: GestureDetector(
                  onTap: () {
                    audioPlayer.play("note${index + 1}.wav",
                        mode: PlayerMode.LOW_LATENCY, volume: 5);
                  },
                  child: Image.asset(
                    "images/${index + 1}.png",
                    height: height * 0.1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
