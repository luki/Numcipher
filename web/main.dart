// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'pkg/cipherapp.dart';

CipherApplication numcipher = new CipherApplication();

InputElement clearSelector = querySelector('#clear');
InputElement textfieldSelector = querySelector('#textfield');

void main() {
  querySelector('#submit').onClick.listen(submitEvent);
  querySelector('#selection').onChange.listen(changeEvent);
  clearSelector.hidden = true;
  querySelector('#clear').onClick.listen(clearEvent);
}

void submitEvent(MouseEvent event) {

  if (textfieldSelector.value != "") {

    if ((querySelector("#note-entering") as SpanElement).hidden == false) {
      (querySelector("#note-entering") as SpanElement).hidden = true;
    }

    String message = textfieldSelector.value;
    numcipher.setTranslationString(message);
    List results = numcipher.getTranslatedStrings();

    // Create new entry div
    var newEntry = new UListElement()
    ..classes.add('list-group-item')
    ..text = results.first;

    var newCopy = new ButtonElement()
    ..type = "button"
    ..classes.add('float-xs-right')
    ..id = "copy"
    ..text = "Copy";

    newEntry.children.add(newCopy);

    // Add entry div to table
    (querySelector('#results') as UListElement).children.insert(0, newEntry);
    clearSelector.hidden = false;
    clearTextfield();
  }
}

void changeEvent(Event event) {
  numcipher.changeTranslationType();
  clearTextfield();
}

void createAlert() {
}

void clearEvent(MouseEvent event) {
  numcipher.clearResults();
  (querySelector('#results') as UListElement).children.clear();
  clearSelector.hidden = true;
}

void clearTextfield() => textfieldSelector.value = "";
