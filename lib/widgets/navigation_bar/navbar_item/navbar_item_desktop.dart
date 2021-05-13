import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Row(
      children: [
        Icon(model.iconData),
        SizedBox(width: 10.0),
        Text(
          model.title,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
