// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'pkg/logic.dart';

CipherApplication numcipher = new CipherApplication();

void main() {
  querySelector('#submit').onClick.listen(submitEvent);
}

void submitEvent(MouseEvent event) {
  String message = (querySelector('#textfield') as InputElement).value;
  numcipher.setTranslationString(message);
  print(numcipher.returnTranslatedString());
}
