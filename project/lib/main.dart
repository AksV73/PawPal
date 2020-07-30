//import 'dart:js';

import 'dart:async';

import 'package:flutter/services.dart' show rootBundle;


import 'package:flutter/material.dart';
import 'dart:convert';


void main()  {
  runApp(MyApp());
}
List data = [];

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


class qu1 extends StatelessWidget {
 void addData(value){
   data.add(value);
   print(data);
 }

  @override
  Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: Text("Question 1"),
     ),
     body: Column(
       children: <Widget>[
         FlatButton(
           onPressed: (){},
           child: Text("Which on of the following are you ?"),
         ),
         Column(
           children: <Widget>[
             FlatButton(
                 onPressed: (){
                   addData("single");
                 },
                 child: Text("A single working individual")),

                FlatButton(
                 onPressed: (){
                   addData("family");
                 },
                 child: Text("A family with kids"),
               ),
             FlatButton(
               onPressed: (){
                 addData("Couple");
               },
               child: Text("A wroking couple"),
             ),
             FlatButton(
               onPressed: (){
                 addData("elderly");
               },
               child: Text("An elderly"),
             ),
             RaisedButton(
               textColor: Colors.white,
               color: Colors.red,
               child: Text('Next'),
               onPressed: () {
                 navigateToSubPage(context);
               },
             )
               ]
         ),
           ],
         )

     );

  }
 Future navigateToSubPage(context) async {
   Navigator.push(context, MaterialPageRoute(builder: (context) => qu2()));
 }
  }

class qu2 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 2"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("What kind of accommodation would you provide your dog ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("apartment");
                      },
                      child: Text("An apartment")),

                  FlatButton(
                    onPressed: (){
                      addData("independent house");
                    },
                    child: Text("An Independent house"),
                  ),
                  FlatButton(
                    onPressed: (){
                      addData("ranch");
                    },
                    child: Text("A farmhouse/ranch"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu3()));
  }
}

class qu3 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 3"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("How much barking can you tolerate ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("High");
                      },
                      child: Text("Enough to blow the roof off!")),

                  FlatButton(
                    onPressed: (){
                      addData("Low");
                    },
                    child: Text("A woof once in a while "),
                  ),
                  FlatButton(
                    onPressed: (){
                      addData("Moderate");
                    },
                    child: Text("Somewhere in between the two"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu4()));
  }
}

class qu4 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 4"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("For How long will your dog be alone ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("very independent");
                      },
                      child: Text("For 8-10 hrs")),

                  FlatButton(
                    onPressed: (){
                      addData("moderate");
                    },
                    child: Text("For 4-6 hrs"),
                  ),
                  FlatButton(
                    onPressed: (){
                      addData("not independent");
                    },
                    child: Text("The dog would never be alone"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu5()));
  }
}

class qu5 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 5"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("How active would you like your dog to be ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("high");
                      },
                      child: Text("very active")),

                  FlatButton(
                    onPressed: (){
                      addData("medium");
                    },
                    child: Text("moderate"),
                  ),
                  FlatButton(
                    onPressed: (){
                      addData("low");
                    },
                    child: Text("inactive"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu6()));
  }
}

class qu6 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 6"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("How much shedding can you tolerate?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("frequent");
                      },
                      child: Text("high")),

                  FlatButton(
                    onPressed: (){
                      addData("seasonal");
                    },
                    child: Text("moderate"),
                  ),
                  FlatButton(
                    onPressed: (){
                      addData("low");
                    },
                    child: Text("low"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu7()));
  }
}

class qu7 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 7"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("Do you have kids below the age of 12 ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("yes");
                      },
                      child: Text("yes")),

                  FlatButton(
                    onPressed: (){
                      addData("no");
                    },
                    child: Text("no"),
                  ),


                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu8()));
  }
}

class qu8 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 8"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("What kind of dog do you want ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("yes");
                      },
                      child: Text("Guard")),

                  FlatButton(
                    onPressed: (){
                      addData("no");
                    },
                    child: Text("Companion"),
                  ),


                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu9()));
  }
}

class qu9 extends StatelessWidget {
  void addData(value){
    data.add(value);
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 9"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("Which diet would you provide your dog ?"),
            ),
            Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: (){
                        addData("not particular");
                      },
                      child: Text("vegan/vegetarian")),

                  FlatButton(
                    onPressed: (){
                      addData("meat rich");
                    },
                    child: Text("diet with meat"),
                  ),


                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                  )
                ]
            ),
          ],
        )

    );

  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApps()));
  }
}
class MyApps extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}


class MyAppState extends  State<MyApps>  {
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
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[

                            Text("Name: " + new_data[index]['BreedName']),
                            Text("Group1: " + new_data[index]['Group1']),
                            Text("Group2: " + new_data[index]['Group2']),
                            Text(
                                "Weight: " + new_data[index]['MaleWtKg']),
                            Text(
                                "Temperment: " + new_data[index]['Temperment']),
                            Text(
                                "Watchdog: " + new_data[index]['Watchdog']),
                            Text(
                                "Home type: " + new_data[index]['Type of home required']),
                            Text("Barking: " + new_data[index]['Barking ability'])
                          ],
                        ),
                      );
                    },
                    itemCount: new_data == null ? 0 : new_data.length,
                  );
                }),
          ),
        ));
  }


}




























