import 'package:flutter/material.dart';
import 'package:the_basics/datamodels/episode_item_model.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/services/api.dart';

class EpisodeDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  EpisodeItemModel _episode = EpisodeItemModel(
      duration: '0.0',
      title: "",
      imageUrl: "",
      description: "",
      history: "",
      shadowColor1: "",
      shadowColor2: "",
      cardColor: "",
      youtubeVideo: '');

  EpisodeItemModel get episode => _episode;

  Future getEpisodeData(int id) async {
    var response = await _api.getEpisode(id);

    if (response is String) {
      _episode = EpisodeItemModel(
        title: response,
        duration: '0.0',
        imageUrl: '',
        history: "",
        description: '',
        shadowColor1: "",
        shadowColor2: "",
        cardColor: "",
        youtubeVideo: '',
      );
    } else {
      _episode = response;
    }

    notifyListeners();
  }
}
