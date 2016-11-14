// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'pkg/logic.dart';

CipherApplication numcipher = new CipherApplication();

void main() {
  querySelector('#submit').onClick.listen(submitEvent);
  querySelector('#selection').onChange.listen(changeEvent);
}

void submitEvent(MouseEvent event) {
  String message = (querySelector('#textfield') as InputElement).value;
  numcipher.setTranslationString(message);
  List results = numcipher.getTranslatedStrings();

  print(results.first); // Most recent entry
}

void changeEvent(Event event) {
  numcipher.changeTranslationType();
  (querySelector('#textfield') as InputElement).value = "";
}
