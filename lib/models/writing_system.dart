import 'package:katagana/models/symbol.dart';


class WritingSystem {
  String title = "";
  List<Symbol> mainKana = [];
  List<Symbol> dakutenKana = [];
  List<Symbol> combinationKana = [];

  WritingSystem(String title,  List<Symbol> mainKana,
      List<Symbol> dakutenKana, List<Symbol> combinationKana){
        this.title = title;
        this.mainKana = mainKana;
        this.dakutenKana = dakutenKana;
        this.combinationKana = combinationKana;
  }
}

