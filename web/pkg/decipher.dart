String back_translation(String number) {
  switch (number) {
    case "1":
  		return "A";
  	case "2":
  		return "B";
  	case "3":
  		return "C";
  	case "4":
  		return "D";
  	case "5":
  		return "E";
  	case "6":
  		return "F";
  	case "7":
  		return "G";
  	case "8":
  		return "H";
  	case "9":
  		return "I";
  	case "10":
  		return "J";
  	case "11":
  		return "K";
  	case "12":
  		return "L";
  	case "13":
  		return "M";
  	case "14":
  		return "N";
  	case "15":
  		return "O";
  	case "16":
  		return "P";
  	case "17":
  		return "Q";
  	case "18":
  		return "R";
  	case "19":
  		return "S";
  	case "20":
  		return "T";
  	case "21":
  		return "U";
  	case "22":
  		return "V";
  	case "23":
  		return "W";
  	case "24":
  		return "X";
  	case "25":
  		return "Y";
  	case "26":
  		return "Z";
  	case "27":
  		return "Ä";
  	case "28":
  		return "Ö";
  	case "29":
  		return "Ü";
  	default:
  		return "?";
  }
}

String decipher(String encrypted_word) {

  bool ignore = false;
  var chars = encrypted_word.split('');
  int char_amount = chars.length;
  String result = '';

  for (var i = 0; i < char_amount; i++) {
    if (ignore == false) {
      if (chars[i] != ' ' && chars [i] != "-") {
        var new_chars = chars[i];
        var ni = i + 1; // Next index
        if (ni != char_amount) {
          if (chars[ni] != ' ' && chars[ni] != "-") {
            new_chars += chars[ni];
            ignore = true;
          }
        }
        result += back_translation(new_chars);
      } else if (chars[i] == ' ') {
        result += ' ';
      }
    } else {
      ignore = false;
    }
  }
  return result;
}
