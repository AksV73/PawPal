import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

//import 'dart:html';
//import 'dart:html';

import 'package:flutter/rendering.dart';
import 'package:pdf/pdf.dart';

import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/pdfview.dart';
import 'package:project/quiz.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'dart:convert';

//
//import 'package:pdf/pdf.dart' ;
//import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:project/pdfscreen.dart';

final TextEditingController etUsername = new TextEditingController();
TextEditingController etEmailid = new TextEditingController();
String nUsername = "";
String nEmailid = "";

void main() {
  runApp(MyApp());
}

List datas = [];
int score = 0;
String finalpick = "";
int finalpickno = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PawPal(),
      routes: <String, WidgetBuilder>{
        '/welcome page': (context) => welcome(),
        '/quiz': (context) => qu0(),
        //
        // '/data' : (context) => dogo()
        // '/category1' : (context) => Category1(),
      },
    );
  }
}

class PawPal extends StatefulWidget {
  @override
  PawPals createState() => PawPals();
}

class PawPals extends State<PawPal> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => welcome()));
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
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Opacity(
              opacity: 0.3,
              child: Container(
                color: Colors.deepOrangeAccent,
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: () {},
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
        backgroundColor: Colors.red[300],
        title: Text(
          "PawPal",
          style: TextStyle(
            fontFamily: 'Courgette',
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => pdfmaker()));
            },
            icon: Icon(Icons.pets),
            iconSize: 30.0,
            color: Colors.black54,
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            tooltip: 'Go to Home',
            color: Colors.white70,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => welcome()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/1_1.jpg'),
                      fit: BoxFit.fitHeight),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(

                ' \"Welcome to the world of dogs, \nWhere everything is about \ndrooling and paws,\n\nAnd I lick to my heart’s content, \nA big bowl of peanut butter \nwith my vet’s consent, \n\nAnd I run quickly towards the ball,\nWhen my hooman said,\n “Fetch! Before the night falls!”. \n\n -poetry of a PawPal\n',


                style: TextStyle(
//                fontFamily: 'Raleway',
                  fontSize: 20,
                  color: const Color(0xff0e0e0e),
                  height: 0.9,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.all(20.0),
                elevation: 15.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                textColor: Colors.black,
                color: Colors.deepPurple[200],
                child: Text(
                  'Take the breed selector quiz!',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  score = 0;

                  datas = [];
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page1()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/1_2.jpg'),
                      fit: BoxFit.fitHeight),
                )),
            Container(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'At PawPal, we believe in the magical bond between pet parents and their pets. Pets end up becoming our best friends, closest confidants and family members. Adopting a dog is hugely rewarding, but it\'s also a big responsibility.' ,
                style: TextStyle(
//                    fontFamily: 'Raleway',
                  fontSize: 20,
                  color: const Color(0xff0e0e0e),
                  height: 0.9,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/1_3.jpg'),
                      fit: BoxFit.fitHeight),
                )),
            Container(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Hence, we are here to help you find a breed that suits your personality, temperament  and social environment so that both of you can share exciting adventures together!',
                style: TextStyle(
//                    fontFamily: 'Raleway',
                  fontSize: 20,
                  color: const Color(0xff0e0e0e),
                  height: 0.9,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/1_4.jpg'),
                      fit: BoxFit.fitHeight),
                )),
            Container(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'We understand that the bond between pet parents and their dogs differ from one household to another. Therefore we will show you dog breeds that seem the most suited to your preferences.',
                style: TextStyle(
//                    fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: const Color(0xff0e0e0e),
                  height: 0.9,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.all(20.0),
                elevation: 15.0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                ),
              textColor: Colors.black,
                color: Colors.deepPurple[200],
                child: Text(
                  'Take the breed selector quiz!',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  score = 0;
                  datas = [];
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page1()));
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

class MyAppState extends State<MyApps> {
  List data;

  mail(String typedata) async {
    String username = 'pawpalpetpartners@gmail.com';
    String password = 'paw123pal';

    // ignore: deprecated_member_use
    final smtpServer = gmail(username, password);
    // Creating the Gmail server

    // Create our email message.
    final message = Message()
      ..from = Address(username)
      ..recipients.add(nEmailid) //recipent email
      ..subject = 'Greetings from PawPal!' //subject of the email
      ..text =
          "Dear $nUsername, \n These are the matches as per your requirements: \n" +
              typedata;
    //..attachments.add(FileAttachment(file)); //body of the email

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' +
          sendReport.toString()); //print if the email is sent
    } on MailerException catch (e) {
      print('Message not sent. \n' +
          e.toString()); //print if the email is not sent
      // e.toString() will show why the email is not sending
    }
  }

  @override
  Widget _newpage(
      String name,
      String group1,
      String group2,
      String temper,
      String watch,
      String house,
      String diet,
      String bark,
      String kid,
      String indi,
      String activity,
      String shed,
      String maint,
      String weather,
      String allergy,
      int score) {
    List<Color> _colors = [Colors.red[50], Colors.red[100]];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          "PawPal",
          style: TextStyle(
            fontFamily: 'Courgette',
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.pets),
            iconSize: 30.0,
            color: Colors.black54,
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            tooltip: 'Go to Home',
            color: Colors.white70,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => welcome()));
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
            Text(name,
                style: TextStyle(
                  fontFamily: 'Courgette',
                  fontSize: 40.0,
                )),
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
              ),
//              shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(30),
//                ),
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.pets),
                    onPressed: (){},
                  ),
                  title: Text("Name"),
                  subtitle: Text(name),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Characteristics"),
                  subtitle: Text(group1 + " " + group2),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Temperament"),
                  subtitle: Text(temper),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Watchdog"),
                  subtitle: Text(watch),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Level of dependency"),
                  subtitle: Text(indi),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Type of accommodation required"),
                  subtitle: Text(house),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Is the dog kid friendly?"),
                  subtitle: Text(kid),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Activity level"),
                  subtitle: Text(activity),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Shedding"),
                  subtitle: Text(shed),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Cost of maintaining a dog per month"),
                  subtitle: Text(maint),
                  dense: true,
                  trailing: IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () {
                     showDialog(context: context, builder:(context) {
                       return AlertDialog(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30)
                         ),
                         backgroundColor: Colors.red[50],
//                         title: Text("alert!"),
                         content: Text("This is just approximate estimate of monthly expenses. This can vary based on other factors." +
                             '\n\nClick on the button below to read more!'
                         ),
                         actions: <Widget>[
                           RaisedButton(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             ),
                               elevation: 10.0,
                               color: Colors.red[200],
                               child: Text("More Information"),
                               onPressed: () {},
                             ),
                         ],
                       );
                     });
                    },
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Best suited climate"),
                  subtitle: Text(weather),
                  dense: true,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.pets),
                  ),
                  title: Text("Is the dog hypoallergenic?"),
                  subtitle: Text(allergy),
                  dense: true,
                ),
              ],
            ),
          ),
            Container(
              height: 20.0,
            ),
            Text(
              'Partners in pethood',
              style: TextStyle(fontFamily: 'Courgette'),
            ),
            Container(
              height: 20.0,
            ),
            Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                    Text('License for images : '),
                     Image.asset(
                      'images/license.png',
                      height: 20.0,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          "Matches!",
          style: TextStyle(
            fontFamily: 'Courgette',
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.pets),
            iconSize: 30.0,
            color: Colors.black54,
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            tooltip: 'Go to Home',
            color: Colors.white70,
            onPressed: () {
              mail(finalpick);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => welcome()));
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white70,
        child: Center(
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('dataasset/dogdatafinal1.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());
                  finalpickno = 0;
                  finalpick = "";

                  return ListView.builder(
                    // Build the ListView

                    itemBuilder: (BuildContext context, int index) {
                      String name = new_data[index]['BreedName'];
                      String group1 = new_data[index]['Group1'];
                      String group2 = new_data[index]['Group2'];
                      String temper = new_data[index]['Temperament'];
                      String weight = new_data[index]['Average weight'];
                      String watch = new_data[index]['Watchdog'];
                      String house = new_data[index]['Type of accommodation required'];
                      String diet = new_data[index]['Diet'];
                      String bark = new_data[index]['Barking ability'];
                      String kid = new_data[index]['Kid friendly'];
                      String indi = new_data[index]['Independent nature'];
                      String activity = new_data[index]['Activity level'];
                      String shed = new_data[index]['Shedding'];
                      String weather = new_data[index]['Weather'];
                      String allergy = new_data[index]['Hypoallergenic'];
                      String maint = new_data[index]['Maintainence cost per month'];
                      score = 0;

                      if (weather == datas[0] &&
                          house == datas[1] &&
                          allergy == datas[2] &&
                          kid == datas[7]) {
                        score = 4;
                        if (bark == datas[3]) score = score + 1;
                        if (indi == datas[4]) score = score + 1;
                        if (activity == datas[5]) score = score + 1;
                        if (shed == datas[6]) score = score + 1;
                        if (watch == datas[8]) score = score + 1;
                        if (diet == datas[9]) score = score + 1;
                        double finalpercent = (score * 100) / 10;
                        if (score >= 3) {
                          finalpickno = finalpickno + 1;
                          finalpick = finalpick +
                              finalpickno.toString() +
                              ". " +
                              name +
                              " - " +
                              finalpercent.toStringAsFixed(2) +
                              "%" +
                              "\n";

                          return FlatButton(
                            padding: EdgeInsets.all(10.0),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => _newpage(
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
                                          maint,
                                          weather,
                                          allergy,
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
                                Text(finalpercent.toStringAsFixed(2) + "%")
                              ],
                            ),
                          );
                        } else {
                          return new Column();
                        }
                      } else {
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
                })),
      ),
    );
  }
}

class Cost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          "PawPal",
          style: TextStyle(
            fontFamily: 'Courgette',
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.pets),
            iconSize: 30.0,
            color: Colors.black54,
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            tooltip: 'Go to Home',
            color: Colors.white70,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => welcome()));
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ListTile(),

        ],
      ),

    );
  }
}
