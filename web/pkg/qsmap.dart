/* Through this, you are able to create a list of names of input elements, and obtain their values easily by the followingly
returned map. */

// Returns value of querySelector
String returnInputText(String nameOfQuery) =>  (querySelector("#${nameOfQuery}") as InputElement).value;

// Returns a map of values of querySelectors
Map getValues(List<String> values) {
  Map mapOfValues = new Map();
  for (int i = 0; i < values.length; i++) {
    String value = values[i];
    mapOfValues["$value"] = returnInputText("$value");
  }
  return mapOfValues;
}
