import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/dog.dart';
import 'package:flutter_app/dogservice.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFF167F67),
    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  List data = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Load local JSON file",
            style: new TextStyle(color: Colors.white),),
        ),
        body: new Container(
          child: new Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: new FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/dogbreeddata.json'),
                builder: (context, snapshot) {
                  List<dog> doggo =
                  parseJson(snapshot.data.toString());
                  return !doggo.isEmpty
                      ? new DogList(dogs: doggo)
                      : new Center(child: new CircularProgressIndicator());
                }),
          ),
        ));
  }

  List<dog> parseJson(String response) {
    if(response==null){
      return [];
    }
    final parsed =
    json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<dog>((json) => new dog.fromJson(json)).toList();
  }
}