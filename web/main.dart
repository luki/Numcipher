// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'pkg/cipherapp.dart';

CipherApplication numcipher = new CipherApplication();

void main() {
  querySelector('#submit').onClick.listen(submitEvent);
  querySelector('#selection').onChange.listen(changeEvent);
}

void submitEvent(MouseEvent event) {
  String message = (querySelector('#textfield') as InputElement).value;
  numcipher.setTranslationString(message);
  List results = numcipher.getTranslatedStrings();

  // Create new entry div
  var newEntry = new UListElement()
  ..classes.add('list-group-item')
  ..text = results.first;

  var newDelete= new ButtonElement()
  ..type = "button"
  ..classes.add('float-xs-right')
  ..id = "delete"
  ..text = "Delete";

  var newCopy = new ButtonElement()
  ..type = "button"
  ..classes.add('float-xs-right')
  ..id = "copy"
  ..text = "Copy";

  newEntry.children.add(newCopy);
  newEntry.children.add(newDelete);

  // Add entry div to table
  (querySelector('#results') as UListElement).children.insert(0, newEntry);

}

void changeEvent(Event event) {
  numcipher.changeTranslationType();
  (querySelector('#textfield') as InputElement).value = "";
}
