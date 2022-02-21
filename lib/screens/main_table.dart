

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katagana/data/writing_system_data.dart';
import 'package:katagana/models/symbol.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../utils/constants.dart';

WritingSystemData writingSystemData = WritingSystemData();

enum WritingSystemChoice {
  hiragana,
  katakana,
}

class LearnPage extends StatefulWidget{
  @override
  _LearnPageState createState() => _LearnPageState();

}

String filePathAudio(title){
  if(title == "Main Kana")
    return "main_kana_audio";

  else if(title == "Dakuten Kana")
    return "dakuten_kana_audio";

  return "combination_kana_audio";
}

class _LearnPageState extends State<LearnPage> {

  WritingSystemChoice wsChoice = WritingSystemChoice.hiragana;

  final player = AudioCache();

  String displaySelectedWritingSystem(){
      return (wsChoice ==  WritingSystemChoice.hiragana? "Hiragana": "Katakana");
  }


  void displayInfoSymbolInCard(symbol, title) {
        final audio = '${filePathAudio(title)}/${symbol.romaji}.mp3';
        Alert(
          context: context,
          style: symbolInfoAlertBox,
          title: symbol.japaneseSymbol,
          desc:  "Romaji : ${symbol.romaji}",
          buttons: [
            DialogButton(
              child: Icon(
                  Icons.volume_up_outlined,
                  color: Colors.white
              ),
              onPressed: () => player.play(audio),
              color: Colors.deepOrangeAccent,
              radius: BorderRadius.circular(0.0),
            )
          ],
        ).show();
  }



  Widget learnPage() {

    Widget symbolCard(symbol, title){
      return GestureDetector(
        onTap: () => displayInfoSymbolInCard(symbol, title),
        child:  Card(
          elevation: 3.0,
          margin: EdgeInsets.all(7.0),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)
          ),
          child: new Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    symbol.japaneseSymbol,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    symbol.romaji,
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }




  Widget tableOfSymbols(List<Symbol> table, String title) {

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child:
        Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 5,
                children: List.generate(table.length, (index) {
                  return symbolCard(table[index],  title);
                }),
              ),
            ]),
      );
    }



  Widget chooseWritingSystem(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      child: Container(
          child: Column(
            children: [
              Text("Writing Systems",
                style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10),
              Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 50),
                        child: new ElevatedButton(
                          onPressed: () {
                            setState(() {
                              wsChoice = WritingSystemChoice.hiragana;
                            });
                          },
                          child: Text('Hiragana'),
                          style: ElevatedButton.styleFrom(
                            primary: wsChoice == WritingSystemChoice.hiragana
                                ? kActiveCardColour
                                : kInactiveCardColour,
                            side: wsChoice == WritingSystemChoice.hiragana
                                ? BorderSide(width: 2.0, color: Colors.red)
                                : null
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 50),
                        child: new ElevatedButton(
                          onPressed: () {
                            setState(() {
                              wsChoice = WritingSystemChoice.katakana;
                            });
                          },
                          child: Text('Katakana'),

                          style: ElevatedButton.styleFrom(
                            primary: wsChoice == WritingSystemChoice.katakana
                                ? kActiveCardColour
                                : kInactiveCardColour,
                            side: wsChoice == WritingSystemChoice.katakana
                                ? BorderSide(width: 2.0, color: Colors.red)
                                : null
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          )),
    );
  }


    return SingleChildScrollView(
        child: Column(
          children: [
            chooseWritingSystem(),
            tableOfSymbols(writingSystemData.getWritingSystem(displaySelectedWritingSystem()).mainKana, "Main Kana"),
            tableOfSymbols(writingSystemData.getWritingSystem(displaySelectedWritingSystem()).dakutenKana, "Dakuten Kana"),
            tableOfSymbols(writingSystemData.getWritingSystem(displaySelectedWritingSystem()).combinationKana, "Combination Kana"),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: learnPage(),
    );
  }
}