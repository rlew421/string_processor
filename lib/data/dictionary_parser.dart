import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<String> _loadDictionaryAsset() async {
  return await rootBundle.loadString('assets/data/dictionary.json');
}

Future loadDictionary() async {
  String jsonDefinitions = await _loadDictionaryAsset();
  print(jsonDefinitions);
}

// Crossword _parseJsonForCrossword(String jsonString) {
//   Map decoded = jsonDecode(jsonString);

//   List<Word> words = new List<Word>();
//   for (var word in decoded['across']) {
//     words.add(new Word(word['number'], word['word']));
//   }

//   return new Crossword(decoded['id'], decoded['name'], new Across(words));
// }

// Future loadCrossword() async {
//   String jsonCrossword = await _loadCrosswordAsset();
//   Crossword crossword = _parseJsonForCrossword(jsonCrossword);

//   print(crossword.name);
// }

// class Crossword {
//   final int id;
//   final String name;
//   final Across across;

//   Crossword(this.id, this.name, this.across);
// }

// class Across {
//   final List<Word> words;

//   const Across(this.words);
// }

// class Word {
//   final int number;
//   final String word;

//   const Word(this.number, this.word);
// }
