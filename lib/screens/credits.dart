import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:katagana/screens/credits_subwidget/credits_tile.dart';
import 'package:katagana/utils/constants.dart';

class Credits extends StatelessWidget {
  const Credits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text(
                "美しい乙女と4人のハンサムな若い男性がこのアプリケーションを作成しました:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "A beautiful maiden and four handsome young men created this application:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: ListBody(
                  children: [
                    CreditsTile(
                      "FARISCAL, Jade",
                      "翡翠",
                    ),
                    CreditsTile(
                      "MARQUEZ, Zaira",
                      "ザイ",
                    ),
                    CreditsTile(
                      "RESAYAGA, Julio",
                      "フリオ",
                    ),
                    CreditsTile(
                      "VALENCIA, Brian",
                      "ブライ",
                    ),
                    CreditsTile(
                      "ZAPA, Genrev",
                      "レフ",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  "We would like to thank Coscom Laguage Services Inc. and Tofugu for providing various free materials from basic to intermediate level.",
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
