import 'encipher.dart';
import 'decipher.dart';

class CipherApplication {

  int _translationType = 0;
  String _translationString;
  String _translatedString;

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
        _translatedString = encipher(_translationString);
        break;
      case 1:
        _translatedString = decipher(_translationString);
        break;
      default:
        print("Error");
        break;
    }
  }

  String returnTranslatedString() {
    _translateString();
    return _translatedString;
  }

}
