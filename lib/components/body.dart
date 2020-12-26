import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //画面の大きさの情報

    return SingleChildScrollView(
      //分かんない
      child: Column(children: <Widget>[
        HeaderWithSearchBox(size: size),
        Row(
          children: <Widget>[
            TitleWithCustomUnderline(
              text: "Recommended",
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: kPrimaryColor,
              onPressed: () {},
              child: Text("more"),
            )
          ],
        )
      ]),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24, //文字の高さを制限する 収まらなかったら切れる
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            //文字をずらす
            child: Text(text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Positioned(
            //Stack内での絶対位置
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding / 4), //線をずらす
                height: 7, //高さを制限
                color: kPrimaryColor.withOpacity(0.2), //色指定
                ),
          )
        ],
      ),
    );
  }
}
