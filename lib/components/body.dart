import 'package:flutter/material.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //画面の大きさの情報

    return SingleChildScrollView( //分かんない
      child: Column(
        children: <Widget>[HeaderWithSearchBox(size: size)],
      ),
    );
  }
}
