import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:katagana/screens/help_subwidget/paragraph.dart';

class HelpTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            "Katagana",
            style: GoogleFonts.kaushanScript(
              fontSize: MediaQuery.of(context).size.height * 0.055,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "\t Katagana is an app for those who wish to start learning how to read and speak in Japanese. Katagana offers an easy way to view all of the Japanese characters and their English phonetic spellings, as well as a quiz page where you can brush up on what you know so far.",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(
                  color: Colors.black,
                  height: 5,
                  thickness: 2,
                ),
                Container(
                  height: 50,
                ),
                HelpBlock(
                  "Learn",
                  [
                    "This page is where you can view the full table of Japanese characters and their equivalent English phonetic spellings.",
                    "The symbols can be clicked in order to expand a window, where the user can press a button to play an audio file of how the syllable is meant to be pronounced.",
                    "The symbols are grouped according to their type of kana: main kana, dakuten kana (kana derived from main kana), and combination kana.",
                    "It's recommended to learn Hiragana first.",
                  ],
                ),
                Container(
                  height: 50,
                ),
                HelpBlock(
                  "Quiz",
                  [
                    "This page is where you can practice what you've learned.",
                    "You will be given an image of a symbol, and a list of choices where only one correctly refers to the symbol on the image.",
                    "Depending on the kinds of kana/writing systems you chose, questions will be added to the total question count. (ex. choosing only Hiragana & main kana will give 46 questions)",
                    "Each correct answer will add a point, while each wrong answer will cause the question to be asked again at a random point in the future.",
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
