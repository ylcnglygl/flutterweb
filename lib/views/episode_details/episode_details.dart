import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/viewmodels/episode_details_view_model.dart';
import 'package:the_basics/widgets/youtube_player.dart';

class EpisodeDetails extends StatelessWidget {
  final int id;

  const EpisodeDetails({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodeDetailsViewModel>.reactive(
      viewModelBuilder: () => EpisodeDetailsViewModel(),
      onModelReady: (model) => model.getEpisodeData(id),
      builder: (context, model, child) => Center(
        child: Column(
          children: <Widget>[
            model.episode.title == ""
                ? CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      model.episode.title,
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
            model.episode.imageUrl == ""
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: YoutubePlayerWidget(
                        initialVideo: model.episode.youtubeVideo)),
          ],
        ),
      ),
    );
  }
}
