import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/datamodels/season_details_model.dart';
import 'package:the_basics/viewmodels/episodes_view_model.dart';
import 'package:the_basics/widgets/episodes_list/episodes_list.dart';

import 'package:the_basics/widgets/season_details/season_details.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodesViewModel>.reactive(
      // ignore: deprecated_member_use
      viewModelBuilder: () => EpisodesViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0),
            child: SeasonDetails(
              details: SeasonDetailsModel(
                title: 'SEASON 1',
                description:
                    'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
              ),
            ),
          ),

          // ignore: unnecessary_null_comparison
          model.episodes.isEmpty
              ? CircularProgressIndicator()
              : Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70.0, vertical: 20.0),
                  child: EpisodesList(
                    episodes: model.episodes,
                  ),
                ),
        ],
      )),
    );
  }
}
