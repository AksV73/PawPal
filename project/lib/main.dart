import 'dart:async';
//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:project/quizfile.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'welcome.dart'
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
    Timer(Duration(seconds: 1), ()
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pawpal_dog.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Text(
            'PawPal',
//          textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold

            ),
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
          backgroundColor: Colors.grey,
          title: Text(
            "Pawpal",
            textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.pets),
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
        body: Column(
          children: <Widget>[
            Container(
              height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/1_1.jpg'),
                      fit: BoxFit.cover
                  ),
                )
            ),
            Text(
              'Welcome everyone to the world of dogs \nWhere everything is about drooling and paws\n\nAnd a woof every now and then\nWhen a hooman rubs my tummy and go amen\n\nAnd a wag in my tail \nWhen I play with a butterfly and garden snail\n\nAnd I lick to my heart’s content \nA big bowl of peanut butter with my vet’s content \n\nAnd I run quickly towards the ball\nWhen my hooman said, “Fetch! Before the night befalls!”.\n',
              style: TextStyle(
//                fontFamily: 'Gabriola',
                fontSize: 20,
                color: const Color(0xff0e0e0e),
                height: 0.75,
              ),
              textAlign: TextAlign.right,
            ),

           RaisedButton(
               padding: EdgeInsets.all(20.0),
               textColor: Colors.black,
               color: Colors.deepOrangeAccent
               child: Text('Take the breed selector quiz!'),
               onPressed: () {
                 datas = [];
                 Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
            },
         ),
            Container(
            height: 60.0,
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('images/1_1.jpg'),
            fit: BoxFit.cover
            ),
              )
            ) ,
            Text(
              'At PawPal, we believe in that magical bond between people and their pets, and that together we can live richer, happier lives. Our pets are more than just pets, they\'re our best friends, closest confidants and family members. Owning a dog is hugely rewarding, but it\'s also a big responsibility. You may be wondering which dog breed you should get, which is why we\'re here to help you find a breed that suits your unique lifestyle to ensure that you can both share happy adventures together.',
              tyle: TextStyle(
//                fontFamily: 'Gabriola',
    fontSize: 20,
    color: const Color(0xff0e0e0e),
    height: 0.75,
    ),
    textAlign: TextAlign.right,
              ) ,
    RaisedButton(
    padding: EdgeInsets.all(20.0),
    textColor: Colors.black,
    color: Colors.deepOrangeAccent
    child: Text('Take the breed selector quiz!'),
    onPressed: () {
    datas = [];
    Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
    },
    ),
        ],
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset('images/$name.jpg'),
          ),
          ListTile(
            title: Text("Name: " + name + "\nGroup1: " + group1 + "\nGroup2: " + group2 + "\nTemperment: "+ temper + "\nWatchDog: " + watch +"\nWeight: "+ weight +" kg" + "\nType of home required: "+ house + "\nKid Friendly: " + kid + "\nActivity level: "+ activity + "\nShedding: "+ shed),
          ),
        ],

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













