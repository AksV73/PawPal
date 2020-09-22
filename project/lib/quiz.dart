import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';



class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  clearTextInput(){
    etUsername.clear();
    etEmailid.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar:  AppBar(
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
            onPressed: (){},
            icon: Icon(Icons.pets),
            iconSize: 30.0,
            color: Colors.black54,
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            tooltip: 'Go to Home',
            color: Colors.white70,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
            },
          ),
        ],
      ),

      body: Form(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
            ),

            Container(
              child: Text('Registeration Form',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),


            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFormField(
                controller: etUsername,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFormField(
                controller: etEmailid,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email Id',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 200.0,
//                padding: EdgeInsets.all(25.0),
                alignment: Alignment.center,
                child: MaterialButton(onPressed: () {
                  setState(() {
                    nUsername = etUsername.text;
                    nEmailid = etEmailid.text;
                  });
                  clearTextInput();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => qu0()));
                },
                  color: Colors.red[300],
                  textColor: Colors.black,
                  child: Text(
                      'Submit',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),

                  ),
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}














class qu0 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
    print(nUsername);
    print(nEmailid);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 1',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "What is the weather condition at your place?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "hot";
                              },
                              splashColor: Colors.green,
                              child: Text("Hot (25 degrees to 35 degree)",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "warm";
                            },
                            splashColor: Colors.green,
                            child: Text("Warm (15 degrees to 25 degrees)",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: (){ temp = "cold"; },
                            splashColor: Colors.green,
                            child: Text("below 15 degrees",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu1()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
class qu1 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 2',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "What kind of accommodation would you provide your dog ?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "apartment";
                              },
                              splashColor: Colors.green,
                              child: Text("An apartment",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "independent house";
                            },
                            splashColor: Colors.green,
                            child: Text("An Independent house",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: (){ temp = "ranch"; },
                            splashColor: Colors.green,
                            child: Text("A farmhouse/ranch",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                       // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu2()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
class qu2 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 3',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "Do you or your family members face any kind of allergies with respect to dogs?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "no";
                              },
                              splashColor: Colors.green,
                              child: Text("No",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "yes";
                            },
                            splashColor: Colors.green,
                            child: Text("yes",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu3()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
class qu3 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 4',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "How much barking does your society allow ?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "high";
                              },
                              splashColor: Colors.green,
                              child: Text("Enough to blow the roof off!",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "low";
                            },
                            splashColor: Colors.green,
                            child: Text("A woof once in a while",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: (){ temp = "moderate"; },
                            splashColor: Colors.green,
                            child: Text("Somewhere in between the two",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                       // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu4()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),

                       Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/paw-trail.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),


                       Text(
                        'Partners in pethood',
                        style: TextStyle( fontFamily: 'Courgette'),
                      ),

                    ]

                )
                ),
              ),
            ),
        ),
        );

  }
}

class qu4 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 5',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "For how long will your dog be alone",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "very independent";
                              },
                              splashColor: Colors.green,
                              child: Text("For 6-8 hours",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "moderate";
                            },
                            splashColor: Colors.green,
                            child: Text("For 2-4 hours",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: (){ temp = "not independent"; },
                            splashColor: Colors.green,
                            child: Text("The dog would never be alone",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        //highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu5()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}


class qu5 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 6',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "How active would you like your dog to be?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "high";
                              },
                              splashColor: Colors.green,
                              child: Text("Very active",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "medium";
                            },
                            splashColor: Colors.green,
                            child: Text("Moderate",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: (){ temp = "low"; },
                            splashColor: Colors.green,
                            child: Text("Inactive",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        //highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu6()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class qu6 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 7',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "How much shedding can you tolerate?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "frequent";
                              },
                              splashColor: Colors.green,
                              child: Text("High",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "seasonal";
                            },
                            splashColor: Colors.green,
                            child: Text("Moderate",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: (){ temp = "low"; },
                            splashColor: Colors.green,
                            child: Text("Low",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        //highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu7()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class qu7 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 8',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "Do you have kids ?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "yes";
                              },
                              splashColor: Colors.green,
                              child: Text("Yes",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "no";
                            },
                            splashColor: Colors.green,
                            child: Text("No",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        //highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu8()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class qu8 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 9',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "What kind of dog do you want",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "yes";
                              },
                              splashColor: Colors.green,
                              child: Text("Guard",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "no";
                            },
                            splashColor: Colors.green,
                            child: Text("Companion",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        //highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => qu9()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class qu9 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:  AppBar(
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
              onPressed: (){},
              icon: Icon(Icons.pets),
              iconSize: 30.0,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30.0,
              tooltip: 'Go to Home',
              color: Colors.white70,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Question 10',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "Which diet would you provide to your dog?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                temp = "not particular";
                              },
                              splashColor: Colors.green,
                              child: Text("Vegan/ Vegetarian",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              temp = "meat rich";
                            },
                            splashColor: Colors.green,
                            child: Text("Diet with meat",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                       // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApps()));
                        },
                        splashColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}



/*class preferance3 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.teal[200], Colors.yellow[100], ];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
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
          child: Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      width: devwidth - 10.0,
                      color: Colors.white24,
                      child: Text(
                        'Choose your preferances ',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'DancingScript',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "What is your third preferance ?",
                              style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                            ),
                          ),
                          RaisedButton(
                              onPressed: (){
                                thirdchoice = 6;
                              },
                              splashColor: Colors.green,
                              child: Text("Guard/ Companion",
                                style: TextStyle( fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: (){
                              thirdchoice = 7;
                            },
                            splashColor: Colors.green,
                            child: Text("Diet",
                              style: TextStyle( fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 60.0 ,
                        textColor: Colors.white,
                        color: Colors.black54,
                        //highlightColor: Colors.red,
                        child: Text(
                          'Click here to see RESULTS!',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'DancingScript'
                          ),
                        ),
                        splashColor: Colors.green,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApps()));
                        },
                      ),
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle( fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

 */







