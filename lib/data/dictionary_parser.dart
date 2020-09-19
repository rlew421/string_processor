import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<String> _loadDictionaryAsset() async {
  return await rootBundle.loadString('assets/data/dictionary.json');
}

Future loadDictionary(word) async {
  String jsonDefinitions = await _loadDictionaryAsset();
  _parseJsonForDictionary(jsonDefinitions, word);
}

void _parseJsonForDictionary(String jsonString, String selectedWord) {
  Map decoded = jsonDecode(jsonString);

  List data = decoded['data'];

  var foundElement =
      data.firstWhere((element) => element['word'] == selectedWord);

  var foundMessage = foundElement['message'];
  print(foundMessage);
}
// _parseJsonForDictionary takes an argument of the JSON string from the JSON file and parses the string to return the resulting JSON object
// _parseJsonForDictionary also takes an argument of the selected word which it uses to query the JSON object
