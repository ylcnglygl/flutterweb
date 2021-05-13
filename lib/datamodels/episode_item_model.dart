class EpisodeItemModel {
  final String title;
  final String duration;
  final String imageUrl;
  final String description;
  final String history;
  final String shadowColor1;
  final String shadowColor2;
  final String youtubeVideo;
  final String cardColor;

  EpisodeItemModel({
    required this.title,
    required this.duration,
    required this.imageUrl,
    required this.description,
    required this.history,
    required this.shadowColor1,
    required this.shadowColor2,
    required this.youtubeVideo,
    required this.cardColor,
  });

  EpisodeItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        duration = map['duration'],
        description = map['description'],
        history = map['history'],
        shadowColor1 = map['shadowColor1'],
        shadowColor2 = map['shadowColor2'],
        youtubeVideo = map['youtubeVideo'],
        cardColor = map['cardColor'],
        imageUrl = map['imageUrl'];
}
