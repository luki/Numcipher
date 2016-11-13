// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'pkg/logic.dart';

CipherApplication numcipher = new CipherApplication();

void main() {
  querySelector('#submit').onClick.listen(submitEvent);
  querySelector('#selection').onChange.listen(changeEvent);

  querySelector('#error-alert').hidden = true;
}

void submitEvent(MouseEvent event) {
  String message = (querySelector('#textfield') as InputElement).value;
  numcipher.setTranslationString(message);
  var result = numcipher.returnTranslatedString();
  if (result != '???') {
    (querySelector('#result') as ParagraphElement).text = result;
  } else {
    querySelector('#error-alert').hidden = false;
    (querySelector('#result') as ParagraphElement).text = "";
    print("Error!");
  }
}

void changeEvent(Event event) {
  numcipher.changeTranslationType();
  (querySelector('#textfield') as InputElement).value = "";
}
