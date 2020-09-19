import 'dart:async';

//import 'dart:html';
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:project/quiz.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'dart:convert';



void main()  {
  runApp(MyApp());
}
List datas = [];
int score = 0;

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
    Timer(Duration(seconds: 4), ()
    {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => welcome()));
    });
  }
  List<Color> _colors = [Colors.blue, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[900],
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.9,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pawpal_dog.jpg'),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Container(
              color: Colors.deepOrangeAccent,
            )
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                    iconSize: 100.0,
                    color: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black54,
                  height: 80.0,
                  width: 200.0,
                  child: Center(
                    child: Text(
                      'PawPal',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Courgette',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                Container(
                  color: Colors.black54,
                  height: 80.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                      'Partners in Pethood',
                      style: TextStyle(
                          color: Colors.deepOrange[400],
                          fontSize: 30.0,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Courgette',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                )

              ],
            ),
          ),
        ],
      ),
      );
  }
}

class welcome extends StatefulWidget {

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Pawpal",
            style: TextStyle(
              fontFamily: 'Courgette',
            ),
            textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/1_1.jpg'),
                        fit: BoxFit.fitHeight
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  ' \"Welcome everyone to the world of dogs, \nWhere everything is about drooling and paws,\n\nAnd a woof every now and then,\nWhen a hooman rubs my tummy and I go Amen! \n\nAnd a wag in my tail, \nWhen I play with a butterfly & a garden snail,\n\nAnd I lick to my heart’s content, \nA big bowl of peanut butter with my vet’s consent; \n\nAnd I run quickly towards the ball,\nWhen my hooman said, “Fetch! Before the night falls!”. \"\n -poetry of a pawpal\n',
                  style: TextStyle(
                fontFamily: 'DancingScript',
                    fontSize: 20,
                    color: const Color(0xff0e0e0e),
                    height: 0.8,
                    //fontFamily: 'Indie',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: RaisedButton(
                   padding: EdgeInsets.all(20.0),
                   textColor: Colors.black,
                   color: Colors.deepOrangeAccent,
                   child: Text(
                       'Take the breed selector quiz!'),
                   onPressed: () {
                     datas = [];
                     Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
                },
           ),
             ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/1_2.jpg'),
                        fit: BoxFit.fitHeight
                    ),
                  )
              ),
              Container(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'At PawPal, we believe in the magical bond between pet parents and their pets. Pets end up becoming our best friends, closest confidants and family members. Adopting a dog is hugely rewarding, but it\'s also a big responsibility. You might be wondering which dog breed suits you the best? Hence we are here to help you find a breed that suits your personality, temperament  and social environment to ensure that both of you can share exciting adventures together!',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    color: const Color(0xff0e0e0e),
                     height: 0.9,
                     ),
                   textAlign: TextAlign.center,
                  ),
              ) ,
              Container(
                height: 20.0,
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/1_3.jpg'),
                        fit: BoxFit.fitHeight
                    ),
                  )
              ),
              Container(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'We’ve done extensive research in the field of pet nutrition, health and behavior, to ensure that you find the right pawpal.',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    color: const Color(0xff0e0e0e),
                    height: 0.9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ) ,
              Container(
                height: 20.0,
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/1_4.jpg'),
                        fit: BoxFit.fitHeight
                    ),
                  )
              ),
              Container(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'We understand that the bond between pet parents and their dogs differ from one household to another. Therefore we will show you dog breeds that seem the most suited to your preferences. Our dog breed selector tool can help steer you in the right direction, leading you closer to your perfect match.',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    color: const Color(0xff0e0e0e),
                    height: 0.9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ) ,
              Container(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  padding: EdgeInsets.all(20.0),
                  textColor: Colors.black,
                  color: Colors.deepOrangeAccent,
                  child: Text('Take the breed selector quiz!'),
                  onPressed: () {
                    datas = [];
                    score = 0;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
                  },
                ),
              ),
              Container(
                height: 20.0,
              ),
          ],
          ),
        ),
    );

  }
}

















class MyApps extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}


class MyAppState extends  State<MyApps> {
  List data;

  @override
  Widget _newpage(String name, String group1, String group2, String temper, String watch, String house, String diet, String bark, String kid, String indi, String activity, String shed, int score)
  {
    List<Color> _colors = [Colors.black26, Colors.grey ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'PawPal',
          style: TextStyle(
            fontFamily: 'Courgette',
          ),
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.pets),
            color: Colors.black,
            iconSize: 30.0,
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            tooltip: 'Go to Home',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 20.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 40.0,
              )
            ),

            Container(
              height: 20.0,
            ),

            Container(
              child: Image.asset('images/$name.jpg'),
            ),

            Container(
              height: 20.0,
            ),

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: _colors,
                )
              ),
              child: ListTile(
                    title: Text("Name: " + name +
                        "\nCharacteristics: " + group1 + ", " + group2 +
                        "\nTemperment: "+ temper +
                        "\nWatchDog: " + watch +
                        "\nIndependence: "+ indi+
                        "\nType of home required: "+ house +
                        "\nKid Friendly: " + kid +
                        "\nActivity level: "+ activity +
                        "\nShedding: "+ shed,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                      ),
                    ),

                  ),
            ),
            Container(
              height: 20.0,
            ),

            Text(
              'Partners in pethood',
              style: TextStyle( fontFamily: 'Courgette'),
            ),
            Container(
              height: 20.0,
            ),

            Center(
              child: Row(
                children: <Widget>[
                  Text(
                    'License for images : '
                  ),
                  Image.asset(
                    'images/license.png',
                    height: 20.0,
                  ),
                ],
              )
            ),

          ],

        ),
      ),

    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "MATCHES!",
            style: TextStyle(
              fontFamily: 'Courgette',
            ),
            textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.pets),
              color: Colors.black,
              iconSize: 30.0,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: Container(
          color: Colors.white70,
          child: Center(
            child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('dataasset/dogdataupdated.json'),
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
                      //String weight = new_data[index]['MaleWtKg'];
                      String watch = new_data[index]['Watchdog'];
                      String house = new_data[index]['Type of home required'];
                      String diet = new_data[index]['Eating habits'];
                      String bark = new_data[index]['Barking ability'];
                      String kid = new_data[index]['Kid friendly'];
                      String indi = new_data[index]['Independence'];
                      String activity = new_data[index]['activity level'];
                      String shed = new_data[index]['Shedding'];
                      score = 0;
                      if(house == datas[0] && kid == datas[5]) {
                        if(bark == datas[1])
                          score = score+1;
                        if(indi == datas[2])
                          score = score+1;
                        if(activity == datas[3])
                          score = score+1;
                        if(shed == datas[4])
                          score = score+1;
                        if(watch == datas[6])
                          score = score+1;
                        if(diet == datas[7])
                          score = score+1;
                        double finalpercent = (score*100)/6;
                          if(score>=3) {
                            return FlatButton(
                              padding: EdgeInsets.all(10.0),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>
                                        _newpage(
                                            name,
                                            group1,
                                            group2,
                                            temper,
                                            watch,
                                            house,
                                            diet,
                                            bark,
                                            kid,
                                            indi,
                                            activity,
                                            shed,
                                            score)));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    name,
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                    ),

                                  ),
                                  Text(finalpercent.toStringAsFixed(2))
                                ],
                              ),
                            );
                          }
                          else{
                            return new Column();

                          }
                      }
                      else{
                        return new Column(
//                          children: <Widget>[
//                            Text(
//                              'No suitable matches were found! Try taking the quiz again.'
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.all(10.0),
//                              child: RaisedButton(
//                                padding: EdgeInsets.all(20.0),
//                                textColor: Colors.black,
//                                color: Colors.deepOrangeAccent,
//                                child: Text(
//                                    'Take the breed selector quiz!'),
//                                onPressed: () {
//                                  datas = [];
//                                  Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
//                                },
//                              ),
//                            ),
//                          ],

                        );
                      }
                    },

                    itemCount: new_data == null ? 0 : new_data.length,
                  );


                }),
          ),
        ));
  }
}













