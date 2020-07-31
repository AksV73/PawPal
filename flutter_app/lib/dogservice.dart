import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dog.dart';

class DogList extends StatelessWidget {
  final List<dog> dogs;
  DogList({Key key, this.dogs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(

        itemBuilder: (BuildContext context, int index) {
          return
            new Card(
              child: new Container(
                child: new Center(
                    child: new Column(
                      // Stretch the cards in horizontal axis
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        new Text(
                          // Read the name field value and set it in the Text widget
                          dogs[index].dogname,
                          // set some style to text
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),
                        ),
                        new Text(
                          // Read the name field value and set it in the Text widget
                          "Characteristics " + dogs[index].group1,
                          // set some style to text
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.amber),
                        ),
                      ],
                    )),
                padding: const EdgeInsets.all(15.0),
              ),
            );
        });
  }
}