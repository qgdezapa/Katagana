class Symbol {
  String japaneseSymbol = "";
  String romaji = "";

  Symbol(String japaneseSymbol, String romaji){
    this.japaneseSymbol = japaneseSymbol;
    this.romaji = romaji;
  }
  String getSymbol(){
    return japaneseSymbol;
  }
}

