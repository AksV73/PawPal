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

                  datas = [];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
             },
          )
        ],
        ),
        ),
    );

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
  Widget _newpage(String name, String group1, String group2, String temper, String weight, String watch, String house, String diet, String bark, String kid, String indi, String activity, String shed)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        child: ListTile(

         title: Text("Name: " + name + "\nGroup1: " + group1 + "\nGroup2: " + group2 + "\nTemperment: "+ temper + "\nWatchDog: " + watch +"\nWeight: "+ weight + "\nType of home required: "+ house +"\nEating habits: "+ diet + "\nKid Friendly: " + kid + "\nActivity level: "+ activity + "\nShedding: "+ shed),

      ),
      ),
    );


       

     


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Your Matches!"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,

              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },


            ),
          ],
        ),
        body: Container(

          child: Center(
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
                      String temper = new_data[index]['Temperment'];
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

                            return FlatButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => _newpage(name, group1, group2, temper, weight, watch, house, diet, bark, kid, indi, activity, shed)));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(name),
                                 

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













