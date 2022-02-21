
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katagana/data/writing_system_data.dart';
import 'package:katagana/models/symbol.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



WritingSystemData writingSystemData = WritingSystemData();

class Quiz extends StatefulWidget {

  final List<String> writingSystem;
  final List<String> kanas;

  Quiz({Key? key, required this.writingSystem, required this.kanas}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();


}

class _QuizState extends State<Quiz> {

  List<Symbol> questions = [];
  String currentQuestion = "";
  List<String> choices = [];
  Random randomizer = new Random();
  int totalPoints = 0, counter = 0;


  @override
  void initState() {
    super.initState();
    for(String ws in  widget.writingSystem){
      for(String kana in widget.kanas) {
        questions.addAll(writingSystemData.getKanaSymbols(ws, kana));
      }
    }
    questions.shuffle();
    generateQuestion();
  }

  void generateQuestion(){
      if(counter < questions.length) {
        currentQuestion = questions[counter].japaneseSymbol;
        choices = [questions[counter].romaji];
        while (choices.length != 3) {
          String choice = questions[randomizer.nextInt(questions.length)].romaji;
          if (!choices.contains(choice))
            choices.add(choice);
        }
        choices.shuffle();
      }
  }


  void checkAnswer(String answer){
    setState(() {
      if(answer == questions[counter].romaji){
        totalPoints += 1;
      }
      counter += 1;
      generateQuestion();
    });
  }

  getSize(context, percent){
    return MediaQuery.of(context).size.height * percent;
  }

  Widget choiceButtons(context, choiceText){
    return Padding(
      child: OutlinedButton(
        child: Text(choiceText, style: TextStyle(fontSize:getSize(context, 0.025))),
        onPressed: ()  {
          checkAnswer(choiceText);
          print(counter);
          print(totalPoints);
        },
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.fromLTRB(getSize(context, 0.09),getSize(context, 0.02),getSize(context, 0.09),getSize(context, 0.02))
        ),
      ),
      padding: EdgeInsets.fromLTRB(0,getSize(context, 0.01),0,0),
    );
  }

  Widget displayCurrentQuestion(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: getSize(context, 0.06)),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Color(0xffffec9e),
              padding: EdgeInsets.fromLTRB(getSize(context, 0.02),0,getSize(context, 0.02),0)
          ),
          child:  Text(currentQuestion, style: TextStyle(color: Colors.black87, fontSize: getSize(context, 0.23), fontWeight: FontWeight.bold)),
        ),

        SizedBox(height: getSize(context, 0.05)),

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: [
            choiceButtons(context, choices[0]),
            choiceButtons(context, choices[1]),
            choiceButtons(context, choices[2]),
          ],
        ),
      ],
    );
  }

  Widget displayResult(){
    return
      Column(
        children: [
          Padding(
            child: Text("You scored $totalPoints out of ${questions.length}",style: TextStyle(fontFamily: 'OdibeeSans-Regular', fontSize:  getSize(context, 0.055))),
            padding:  EdgeInsets.fromLTRB(0, getSize(context, 0.07), 0, getSize(context, 0.06)),
          ),
          totalPoints < (questions.length*0.75).floor()?
          Padding(
            child: Text('You failed. But remember - the best way to get better is to practice.',style: TextStyle(fontFamily: 'Handlee-Regular', fontSize:  getSize(context, 0.03)),textAlign: TextAlign.center),
            padding:  EdgeInsets.fromLTRB(getSize(context, 0.07), getSize(context, 0.06), getSize(context, 0.07), getSize(context, 0.06)),
          ): Padding(
            child: Text('You passed! You did good job getting this far!',style: TextStyle(fontFamily: 'Handlee-Regular', fontSize:  getSize(context, 0.03)),textAlign: TextAlign.center),
            padding:  EdgeInsets.fromLTRB(getSize(context, 0.07), getSize(context, 0.06), getSize(context, 0.07), getSize(context, 0.06)),
          ),
          totalPoints < (questions.length*0.75).floor()?
          Image.asset("assets/gambatte.gif", height: getSize(context, 0.3))
              : Image.asset("assets/good-job.gif", height: getSize(context, 0.3)),
          Padding(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Go back",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            padding:  EdgeInsets.fromLTRB(0, getSize(context, 0.06), 0, 0),
          )

        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          disabledColor: Colors.amber,
          icon: const Icon(Icons.close),
          iconSize: getSize(context, 0.04),
          onPressed: () {
            if(counter < questions.length) {
              Alert(
                context: context,
                title: "HEY!",
                style: AlertStyle(isCloseButton: false),
                desc: "Are you sure you want to quit? Unsaved progress will be lost.",
                buttons: [
                  DialogButton(
                    child: Text(
                      "YES",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      // 1.) pop this current alert box on the stack
                      // 2.) pop the current Page on the stack
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "NO",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ).show();
            }else{
              Navigator.pop(context);
            }
          },
        ),

        title: counter < questions.length? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("score:  ", style: TextStyle(color: Colors.white, fontSize: getSize(context, 0.032), fontWeight: FontWeight.bold)),
                Text("$totalPoints", style: TextStyle(color: Colors.white, fontSize: getSize(context, 0.032), fontWeight: FontWeight.bold)),
              ],
            ),

            Container(
              color: Colors.white38,
              child: Row(
                children: [
                  Text("$counter", style: TextStyle(color: Colors.black87, fontSize: getSize(context, 0.032))),
                  Text("/", style: TextStyle(color: Colors.black87, fontSize: getSize(context, 0.032))),
                  Text("${questions.length}", style: TextStyle(color: Colors.black87, fontSize: getSize(context, 0.032)))
                ],
              ),
              padding: EdgeInsets.all(3),
            ),
          ],
        ): null,
      ),


      body: SingleChildScrollView(
        child: Center(child: counter < questions.length? displayCurrentQuestion() : displayResult()),
      ),
    );
  }
}
