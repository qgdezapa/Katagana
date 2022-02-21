
import 'package:katagana/models/symbol.dart';
import 'package:katagana/models/writing_system.dart';


class WritingSystemData {

  WritingSystem hiragana = WritingSystem(
  "Hiragana",

      [ Symbol("あ", "a"),  Symbol("い", "i"),  Symbol("う", "u"),  Symbol("え", "e"),  Symbol("お", "o"),
        Symbol("か", "ka"), Symbol("き", "ki"),  Symbol("く", "ku"), Symbol("け", "ke"), Symbol("こ", "ko"),
        Symbol("さ", "sa"), Symbol("し", "shi"), Symbol("す", "su"), Symbol("せ", "se"), Symbol("そ", "so"),
        Symbol("た", "ta"), Symbol("ち", "chi"), Symbol("つ", "tsu"),Symbol("て", "te"), Symbol("と", "to"),
        Symbol("な", "na"), Symbol("に", "ni"),  Symbol("ぬ", "nu"), Symbol("ね", "ne"), Symbol("の", "no"),
        Symbol("は", "ha"), Symbol("ひ", "hi"),  Symbol("ふ", "fu"), Symbol("へ", "he"), Symbol("ほ", "ho"),
        Symbol("ま", "ma"), Symbol("み", "mi"),  Symbol("む", "mu"), Symbol("め", "me"), Symbol("も", "mo"),
        Symbol("ら", "ra"), Symbol("り", "ri"),  Symbol("る", "ru"), Symbol("れ", "re"), Symbol("ろ", "ro"),
        Symbol("や", "ya"), Symbol("ゆ", "yu"),  Symbol("よ", "yo"),
        Symbol("わ", "wa"), Symbol("を", "o(wo)"),
        Symbol("ん", "n")
        ],
        [
        Symbol("が","ga"),  Symbol("ぎ","gi"),    Symbol("ぐ","gu"),      Symbol("げ","ge"),  Symbol("ご", "go"),
        Symbol("ざ","za"),  Symbol("じ","ji(zi)"), Symbol("ず","zu"),     Symbol("ぜ","ze"),  Symbol("ぞ", "zo"),
        Symbol("だ","da"),  Symbol("ぢ","ji(di)"), Symbol("づ","zu(du)"), Symbol("で","de"),  Symbol("ど", "do"),
        Symbol("ば","ba"),  Symbol("び","bi"),    Symbol("ぶ","bu"),      Symbol("べ","be"),  Symbol("ぼ","bo"),
        Symbol("ぱ","pa"),  Symbol("ぴ","pi"),    Symbol("ぷ","pu"),      Symbol("ぺ","pe"),  Symbol("ぽ","po"),
        ],
         [
        Symbol("きゃ", "kya"), Symbol("きゅ", "kyu"), Symbol("きょ", "kyo"), Symbol("しゃ", "sha"), Symbol("しゅ", "shu"),
        Symbol("しょ", "sho"), Symbol("ちゃ", "cha"), Symbol("ちゅ", "chu"), Symbol("ちょ", "cho"), Symbol("にゃ", "nya"),
        Symbol("にゅ", "nyu"), Symbol("にょ", "nyo"), Symbol("ひゃ", "hya"), Symbol("ひゅ", "hyu"), Symbol("ひょ", "hyo"),
        Symbol("みゃ", "mya"), Symbol("みゅ", "myu"), Symbol("みょ", "myo"), Symbol("りゃ", "rya"), Symbol("りゅ", "ryu"),
        Symbol("りょ", "ryo"), Symbol("ぎゃ", "gya"), Symbol("ぎゅ", "gyu"), Symbol("ぎょ", "gyo"), Symbol("じゃ", "ja"),
        Symbol("じゅ", "ju"),  Symbol("じょ", "jo"),  Symbol("びゃ", "bya"), Symbol("びゅ", "byu"), Symbol("びょ", "byo"),
        Symbol("ぴゃ", "pya"), Symbol("ぴゅ", "pyu"), Symbol("ぴょ", "pyo")
        ]
  );

  WritingSystem katakana = WritingSystem(
      "Katakana",
      [
        Symbol("ア", "a"),  Symbol("イ", "i"),   Symbol("ウ", "u"),  Symbol("エ", "e"),  Symbol("オ", "o"),
        Symbol("カ", "ka"), Symbol("キ", "ki"),  Symbol("ク", "ku"), Symbol("ケ", "ke"), Symbol("コ", "ko"),
        Symbol("サ", "sa"), Symbol("シ", "shi"), Symbol("ス", "su"), Symbol("セ", "se"), Symbol("ソ", "so"),
        Symbol("タ", "ta"), Symbol("チ", "chi"), Symbol("ツ", "tsu"),Symbol("テ", "te"), Symbol("ト", "to"),
        Symbol("ナ", "na"), Symbol("ニ", "ni"),  Symbol("ヌ", "nu"), Symbol("ネ", "ne"), Symbol("ノ", "no"),
        Symbol("ハ", "ha"), Symbol("ヒ", "hi"),  Symbol("フ", "fu"), Symbol("ヘ", "he"), Symbol("ホ", "ho"),
        Symbol("マ", "ma"), Symbol("ミ", "mi"),  Symbol("ム", "mu"), Symbol("メ", "me"), Symbol("モ", "mo"),
        Symbol("ラ", "ra"), Symbol("リ", "ri"),  Symbol("ル", "ru"), Symbol("レ", "re"),  Symbol("ロ", "ro"),
        Symbol("ヤ", "ya"), Symbol("ユ", "yu"),  Symbol("ヨ", "yo"),
        Symbol("ワ", "wa"), Symbol("ヲ", "o(wo)"),
        Symbol("ン", "n")
      ],
      [
        Symbol("ガ","ga"),  Symbol("ギ","gi"),    Symbol("グ","gu"),    Symbol("ゲ","ge"),  Symbol("ゴ", "go"),
        Symbol("ザ","za"),  Symbol("ジ","ji(zi)"), Symbol("ズ","zu"),    Symbol("ゼ","ze"),  Symbol("ゾ", "zo"),
        Symbol("ダ","da"),  Symbol("ヂ","ji(di)"), Symbol("ヅ","zu(du)"), Symbol("デ","de"),  Symbol("ド", "do"),
        Symbol("バ","ba"),  Symbol("ビ","bi"),    Symbol("ブ","bu"),    Symbol("ベ","be"),  Symbol("ボ","bo"),
        Symbol("パ","pa"),  Symbol("ピ","pi"),    Symbol("プ","pu"),    Symbol("ペ","pe"),  Symbol("ポ","po"),
      ],
      [
        Symbol("キャ", "kya"), Symbol("キュ", "kyu"), Symbol("キョ", "kyo"), Symbol("シャ", "sha"), Symbol("シュ", "shu"),
        Symbol("ショ", "sho"), Symbol("チャ", "cha"), Symbol("チュ", "chu"), Symbol("チョ", "cho"), Symbol("ニャ", "nya"),
        Symbol("ニュ", "nyu"), Symbol("ニョ", "nyo"), Symbol("ヒャ", "hya"), Symbol("ヒュ", "hyu"), Symbol("ヒョ", "hyo"),
        Symbol("ミャ", "mya"), Symbol("ミュ", "myu"), Symbol("ミョ", "myo"), Symbol("リャ", "rya"), Symbol("リュ", "ryu"),
        Symbol("リョ", "ryo"), Symbol("ギャ", "gya"), Symbol("ギュ", "gyu"), Symbol("ギョ", "gyo"), Symbol("ジャ", "ja"),
        Symbol("ジュ", "ju"),  Symbol("ジョ", "jo"),  Symbol("ビャ", "bya"), Symbol("ビュ", "byu"), Symbol("ビョ", "byo"),
        Symbol("ピャ", "pya"), Symbol("ピュ", "pyu"), Symbol("ピョ", "pyo")
      ]
  );




  WritingSystem getWritingSystem(String writingSystem){
    return writingSystem == "Hiragana" ? hiragana : katakana;
  }


  List<Symbol> getKanaSymbols(String writingSystem, String kana) {
    if (writingSystem == "Hiragana") {
      if (kana == "Main Kana")
        return hiragana.mainKana;
      else if (kana == "Dakuten Kana")
        return hiragana.dakutenKana;

      return hiragana.combinationKana;
    }
    else {
      if (kana == "Main Kana")
        return katakana.mainKana;
      else if (kana == "Dakuten Kana")
        return katakana.dakutenKana;

      return katakana.combinationKana;
    }
  }


}