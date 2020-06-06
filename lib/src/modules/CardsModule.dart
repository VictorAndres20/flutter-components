import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:componentsTemplateFlutter/src/containers/Cards/card_button.dart';
import 'package:componentsTemplateFlutter/src/containers/Cards/card_image.dart';
import 'package:componentsTemplateFlutter/src/containers/ListViews/cards_list_view.dart';
import 'package:flutter/material.dart';

class CardsModule extends StatelessWidget{

  final String title = "Cards";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TransparentAppBar(titleAppBar: title,).build(context),
      body: buildCardsListView(<Widget>[
        buildCard(),
        Divider(),
        buildCardImage(),
        Divider(),
        buildCardImageFade()
      ]),
    );
  }
}