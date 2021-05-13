import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerWidget extends StatefulWidget {
  final String initialVideo;

  const YoutubePlayerWidget({Key? key, required this.initialVideo})
      : super(key: key);
  @override
  _YoutubePlayerWidgetState createState() =>
      _YoutubePlayerWidgetState(initialVideo);
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  final String initialVideo;
  // ignore: close_sinks

  _YoutubePlayerWidgetState(this.initialVideo);

  @override
  Widget build(BuildContext context) {
    print(initialVideo);
    return Container(
      child: YoutubePlayerIFrame(
        controller: YoutubePlayerController(
          params: YoutubePlayerParams(
            playlist: [
              'PLdTodMosi',
            ],
            color: 'red',
            startAt: Duration(seconds: 30),
            showControls: true,
            showFullscreenButton: true,
          ),
          initialVideoId: initialVideo,
        ),
        aspectRatio: 16 / 9,
      ),
    );
  }
}
