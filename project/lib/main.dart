//import 'dart:js';

import 'dart:async';
//import 'dart:html';
import 'package:project/quizfile.dart';
import 'package:flutter/services.dart' show rootBundle;


import 'package:flutter/material.dart';
import 'dart:convert';


void main()  {
  runApp(MyApp());
}
List datas = [];

class MyApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PawPal(),
      routes: <String, WidgetBuilder> {
        '/welcome page' : (context) => welcome(),
        '/quiz' : (context) => qu1(),
        //
        // '/data' : (context) => dogo()
       // '/category1' : (context) => Category1(),
      },
    );
  }
}

class PawPal extends StatefulWidget{
  @override
  PawPals createState() => PawPals();

}

class PawPals extends State<PawPal> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()
    {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => welcome()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[900],
      body: Center(
        child: Text(
          'PawPal',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),

      );

  }
}

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            Text('Click button to take quiz'),
            RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('quiz'),
                onPressed: () {
              navigateToSubPage(context);
             },
          )
        ],
        ),
        ),
    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
  }

}










int firstchoice = 0;
int secondchoice = 0;
int thirdchoice = 0;






class MyApps extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}


class MyAppState extends  State<MyApps> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load local JSON file"),
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('dataasset/dogbreeddata.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      String name  = new_data[index]['BreedName'];
                      String group1 = new_data[index]['Group1'];
                      String group2 = new_data[index]['Group2'];
                      String weight = new_data[index]['MaleWtKg'];
                      String watch = new_data[index]['Watchdog'];
                      String house = new_data[index]['Type of home required'];
                      String diet = new_data[index]['Eating habits'];
                      String bark = new_data[index]['Barking ability'];
                      String kid = new_data[index]['Kid friendly'];
                      String indi = new_data[index]['Independence'];
                      String activity = new_data[index]['activity level'];
                      String shed = new_data[index]['Shedding'];
                      if((house == datas[firstchoice] || bark == datas[firstchoice] || indi == datas[firstchoice]) && (activity == datas[secondchoice] || shed == datas[secondchoice] || kid == datas[secondchoice]) && (watch == datas[thirdchoice] || diet == datas[thirdchoice])) {

                            return Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text("Name: " + name),
                                  Text("Group1: " + group1),
                                  Text("Group2: " + group2),
                                  Text(
                                      "Weight: " + weight),

                                  Text(
                                      "Watchdog: " + watch),
                                  Text("Type of home required: " + house),
                                  Text('Eating habits: ' + diet),
                                  Text('Barking Ability: ' + bark),
                                  Text('Kid Friendly: ' + kid),
                                  Text('Independence ' + indi),
                                  Text('Activity level: ' + activity),
                                  Text('Shedding: ' + shed),

                                ],
                              ),
                            );


                      }
                      else{
                        return new Container();
                      }
                    },
                    itemCount: new_data == null ? 0 : new_data.length,
                  );
                }),
          ),
        ));
  }


}












