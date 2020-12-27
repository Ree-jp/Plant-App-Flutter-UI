import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recommend_plats.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //画面の大きさの情報

    return SingleChildScrollView(
        //分かんない
        child: Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(
          title: "Recommended",
          press: () {},
        ),
        RecommendsPlants(),
        TitleWithMoreBtn(
          title: "Featured Plants",
          press: () {},
        ),
        FeaturedPlantCard(),
        SizedBox(
          height: kDefaultPadding,
        )
      ],
    ));
  }
}
