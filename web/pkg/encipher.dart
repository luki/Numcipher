String letter_to_number(String letter) {
  String uppercaseLetter = letter.toUpperCase();

  switch (uppercaseLetter) {
    case "A":
      return "1";
    case "B":
      return "2";
    case "C":
      return "3";
    case "D":
      return "4";
    case "E":
      return "5";
    case "F":
      return "6";
    case "G":
      return "7";
    case "H":
      return "8";
    case "I":
      return "9";
    case "J":
      return "10";
    case "K":
      return "11";
    case "L":
      return "12";
    case "M":
      return "13";
    case "N":
      return "14";
    case "O":
      return "15";
    case "P":
      return "16";
    case "Q":
      return "17";
    case "R":
      return "18";
    case "S":
      return "19";
    case "T":
      return "20";
    case "U":
      return "21";
    case "V":
      return "22";
    case "W":
      return "23";
    case "X":
      return "24";
    case "Y":
      return "25";
    case "Z":
      return "26";
    case "Ä":
      return "27";
    case "Ö":
      return "28";
    case "Ü":
      return "29";
    case "Á":
      return "30";
    case "À":
      return "31";
    case "Å":
      return "32";
    case "Ñ":
      return "33";
    case "Ò":
      return "34";
    case "Ó":
      return "35";
    case "Ø":
      return "36";
    default:
      return "0";
  }
}

String encipher(String word) {
  var current_word = word.toUpperCase();
  int word_length = current_word.length;
  var split_word = current_word.split('');

  String new_word = '';

  for (var i = 0; i < word_length; i++) {
    if (split_word[i] != ' ') {
      String current_letter = split_word[i];
      new_word += letter_to_number(current_letter);

      var next_i = i + 1;
      if (i != (word.length - 1) && split_word[next_i] != ' ') {
        new_word += "-";
      }
    } else {
      new_word += " ";
    }
  }
  return new_word;
}
