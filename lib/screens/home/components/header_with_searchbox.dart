import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2, //app bar こみのdisplayの大きさの2割
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            //親(2割)を超えることは出来ない(* 0.3 とかにしても * 0.2 と同じ結果になる)
            decoration: BoxDecoration(
              //親の残った部分をデコレーション
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36), //左を丸く
                    bottomRight: Radius.circular(36) //右を丸く
                )),
            child: Row(
              children: <Widget>[
                Text(
                  "Hi Uishopy!",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold //太文字にする
                  ),
                ),
                Spacer(), //間をあける
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                alignment: Alignment.center,
                //文字を真ん中に
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                //縁をはめ込む(horizontalで枠の大きさを決める)
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                //親の上から54の高さ
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10), //影の大きさを変更
                          blurRadius: 50, //ぼかす
                          color: kPrimaryColor
                              .withOpacity(0.23) //影の色をPrimaryColorを半透明化した物に変更
                      )
                    ]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle:
                          TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg"), //虫眼鏡アイコン
                  ],
                )),
          )
        ],
      ),
    );
  }
}