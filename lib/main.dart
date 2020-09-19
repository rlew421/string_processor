import 'package:flutter/material.dart';
import 'data/dictionary_parser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'String Processor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter String Processor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var split =
      ("The researchers found that word recall was greatest when the participants read aloud to themselves. “This study confirms that learning and memory benefit from active involvement,” says study  author Colin M. MacLeod, a professor and chair of the Department of Psychology at the  University of Waterloo.")
          .replaceAll('"', '\\"')
          .split(" ");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var word in split)
              SelectableText(
                // I want to put each word in the paragraph into an array and then iterate over each word
                // When I iterate over each word, I want to call a function that accepts that word as an argument
                // and then looks up that word's corresponding definition in the local JSON file and print that definition to the console
                // I think I need to make a SeletableText out of each word?
                word,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
                onTap: () {
                  print(loadDictionary(word));
                },
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
