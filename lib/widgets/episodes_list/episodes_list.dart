import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/datamodels/episode_item_model.dart';
import 'package:the_basics/viewmodels/episode_list_view_model.dart';

import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  final List<EpisodeItemModel> episodes;
  EpisodesList({required this.episodes});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodeListViewModel>.reactive(
      viewModelBuilder: () => EpisodeListViewModel(),
      builder: (context, model, child) => Wrap(
        spacing: 30,
        runSpacing: 30,
        children: <Widget>[
          ...episodes
              .asMap()
              .map((index, episode) => MapEntry(
                  index,
                  GestureDetector(
                      onTap: () => model.navigateToEpisode(index),
                      child: EpisodeItem(model: episode))))
              .values
              .toList()
        ],
      ),
    );
  }
}
