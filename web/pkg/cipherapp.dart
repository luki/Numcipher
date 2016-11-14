import 'encipher.dart';
import 'decipher.dart';

class CipherApplication {

  int _translationType = 0;
  String _translationString;
  List<String> _translatedStrings = new List();

  String getTranslationString() => _translationString;

  void changeTranslationType() {
    switch (_translationType) {
      case 0:
        _translationType = 1;
        break;
      case 1:
        _translationType = 0;
        break;
      default:
        print("Error");
        break;
    }
  }

  int returnTranslationType() => _translationType;

  void setTranslationString(String string) {
    _translationString = string;
  }

  void _translateString() {
    switch (_translationType) {
      case 0:
        _translatedStrings.insert(0, encipher(_translationString));
        break;
      case 1:
        _translatedStrings.insert(0, decipher(_translationString));
        break;
      default:
        print("Error");
        break;
    }
  }

  List<String> getTranslatedStrings() {
    _translateString();
    return _translatedStrings;
  }

  String getTranslatedString(int index) => _translatedStrings[index];
  int getTranslatedStringsAmount() => _translatedStrings.length;
}
