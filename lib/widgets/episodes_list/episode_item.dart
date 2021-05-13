import 'package:flutter/material.dart';
import 'package:the_basics/datamodels/episode_item_model.dart';
import 'package:the_basics/extensions/hover_extensions.dart';

class EpisodeItem extends StatelessWidget {
  final EpisodeItemModel model;
  const EpisodeItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(int.parse(model.shadowColor1)),
            Color(int.parse(model.shadowColor2))
          ])),
      child: Card(
        color: Color(int.parse(model.cardColor)).withOpacity(0.4),
        elevation: 2,
        child: SizedBox(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 180,
                    child: Image.network(
                      model.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 310,
                    child: Container(
                      color: Colors.black,
                      child: Text(
                        '${model.duration}',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      model.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${model.description}',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Icon(Icons.calendar_today),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '${model.history}',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
