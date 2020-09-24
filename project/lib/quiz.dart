import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  clearTextInput() {
    etUsername.clear();
    etEmailid.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
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
      body: Form(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
            ),
            Container(
              child: Text(
                'Registration Form',
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
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      nUsername = etUsername.text;
                      nEmailid = etEmailid.text;
                    });
                    clearTextInput();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => qu0()));
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

class qu0 extends StatefulWidget {
  @override
  _qu0State createState() => _qu0State();
}

class _qu0State extends State<qu0> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
    print(nUsername);
    print(nEmailid);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
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
                      fontFamily: 'Courgette',
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
                      end: Alignment.bottomCenter,
                      begin: Alignment.topRight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 20.0),
                        child: Text(
                          "What are the weather conditions at your place?",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          temp = "Hot";
                          setState(() {
                            selectedbutton1 = true;
                            selectedbutton2 = false;
                            selectedbutton3 = false;
                          });
                        },
                        splashColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: selectedbutton1
                            ? Colors.purple[200]
                            : Colors.purple[50],
                        child: Text(
                          "Hot (25 °C to 35 °C)",
                          style: TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          temp = "Warm";
                          setState(() {
                            selectedbutton2 = true;
                            selectedbutton1 = false;
                            selectedbutton3 = false;
                          });
                        },
                        splashColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: selectedbutton2
                            ? Colors.purple[200]
                            : Colors.purple[50],
                        child: Text(
                          "Warm (15 °C to 25 °C)",
                          style: TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          temp = "Cold";
                          setState(() {
                            selectedbutton3 = true;
                            selectedbutton1 = false;
                            selectedbutton2 = false;
                          });
                        },
                        splashColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: selectedbutton3
                            ? Colors.purple[200]
                            : Colors.purple[50],
                        child: Text(
                          "Cold (below 15 °C)",
                          style: TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple[100], Colors.purple[200], ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: ListTile(
                      title: Text("Why is it important?"),
                      subtitle: Text(
                        '~Each dog breed is accustomed to  a specific climatic condition. \n~More preference for the dog breed which adapts to its natural habitat.'
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    textColor: Colors.white,
                    color: Colors.black54,
                    // highlightColor: Colors.red,
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Courgette'),
                    ),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => qu1()));
                    },
                    splashColor: Colors.purple[100],
                  ),
                ),
                Container(
                  height: 80.0,
                  width: devwidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/paw-trail.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Partners in pethood',
                  style: TextStyle(fontFamily: 'Courgette'),
                )
              ],
            ),
          ),
        ));
  }
}

class qu1 extends StatefulWidget {
  @override
  _qu1State createState() => _qu1State();
}

class _qu1State extends State<qu1> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 70.0,
                  width: devwidth - 10.0,
                  color: Colors.white24,
                  child: Text(
                    'Question 2',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Courgette',
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
                      end: Alignment.bottomCenter,
                      begin: Alignment.topRight,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                        child: Text(
                          "What kind of accommodation would you provide your dog ?",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      RaisedButton(
                          onPressed: () {
                            temp = "Apartment";
                            setState(() {
                              selectedbutton1 = true;
                              selectedbutton2 = false;
                              selectedbutton3 = false;
                            });
                          },
                          splashColor: Colors.purple[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: selectedbutton1
                              ? Colors.purple[200]
                              : Colors.purple[50],
                          child: Text(
                            "An apartment",
                            style: TextStyle(fontFamily: 'Roboto'),
                          )),
                      RaisedButton(
                        onPressed: () {
                          temp = "Independent house";
                          setState(() {
                            selectedbutton2 = true;
                            selectedbutton1 = false;
                            selectedbutton3 = false;
                          });
                        },
                        splashColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: selectedbutton2
                            ? Colors.purple[200]
                            : Colors.purple[50],
                        child: Text(
                          "An independent house",
                          style: TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          temp = "Ranch";
                          setState(() {
                            selectedbutton3 = true;
                            selectedbutton2 = false;
                            selectedbutton1 = false;
                          });
                        },
                        splashColor: Colors.purple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: selectedbutton3
                            ? Colors.purple[200]
                            : Colors.purple[50],
                        child: Text(
                          "A farmhouse or a ranch",
                          style: TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple[100], Colors.purple[200], ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: ListTile(
                      title: Text("Why is it important?"),
                      subtitle: Text(
                          '~Each dog breed requires different living arrangements. \n~Dogs that are used to living in farms or ranches are not suited to live in flats. '
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    textColor: Colors.white,
                    color: Colors.black54,
                    // highlightColor: Colors.red,
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Courgette'),
                    ),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => qu2()));
                    },
                    splashColor: Colors.purple[100],
                  ),
                ),
                Container(
                  height: 80.0,
                  width: devwidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/paw-trail.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Partners in pethood',
                  style: TextStyle(fontFamily: 'Courgette'),
                )
              ],
            ),
          ),
        ));
  }
}

class qu2 extends StatefulWidget {
  @override
  _qu2State createState() => _qu2State();
}

class _qu2State extends State<qu2> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
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
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "Do you or your family members suffer from any kind of allergies with respect to dogs?",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "No";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "No",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "Yes";
                              setState(() {
                                selectedbutton2 = true;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton2
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Yes",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                              '~Certain dog breeds produce allergens that end up in their dander (dead skin), saliva, and urine.' +
//                             '\n~An allergic reaction occurs when a sensitive person’s immune system reacts abnormally to the usually harmless proteins.' +
                         '\n~Preference to those dog breeds that are less susceptible to produce such allergens.'
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => qu3()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class qu3 extends StatefulWidget {
  @override
  _qu3State createState() => _qu3State();
}

class _qu3State extends State<qu3> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
        child: Container(
          child: Card(
            child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 70.0,
                    width: devwidth - 10.0,
                    color: Colors.white24,
                    child: Text(
                      'Question 4',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Courgette',
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
                        end: Alignment.bottomCenter,
                        begin: Alignment.topRight,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: Text(
                            "How much barking does your society allow ?",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        RaisedButton(
                            onPressed: () {
                              temp = "High";
                              setState(() {
                                selectedbutton1 = true;
                                selectedbutton2 = false;
                                selectedbutton3 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton1
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Enough to blow the roof off!",
                              style: TextStyle(fontFamily: 'Roboto'),
                            )),
                        RaisedButton(
                          onPressed: () {
                            temp = "Low";
                            setState(() {
                              selectedbutton2 = true;
                              selectedbutton1 = false;
                              selectedbutton3 = false;
                            });
                          },
                          splashColor: Colors.purple[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: selectedbutton2
                              ? Colors.purple[200]
                              : Colors.purple[50],
                          child: Text(
                            "A woof once in a while",
                            style: TextStyle(fontFamily: 'Roboto'),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            temp = "Moderate";
                            setState(() {
                              selectedbutton3 = true;
                              selectedbutton2 = false;
                              selectedbutton1 = false;
                            });
                          },
                          splashColor: Colors.purple[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: selectedbutton3
                              ? Colors.purple[200]
                              : Colors.purple[50],
                          child: Text(
                            "Somewhere in between",
                            style: TextStyle(fontFamily: 'Roboto'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple[100], Colors.purple[200], ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: ListTile(
                        title: Text("Why is it important?"),
                        subtitle: Text(
                          '~Certain localities don’t tolerate barking.\n~More priority to those dog breeds which fulfill the norms of the society.'
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      elevation: 10.0,
                      textColor: Colors.white,
                      color: Colors.black54,
                      // highlightColor: Colors.red,
                      child: Text(
                        'Next',
                        style:
                            TextStyle(fontSize: 20.0, fontFamily: 'Courgette'),
                      ),
                      onPressed: () {
                        addData(temp);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => qu4()));
                      },
                      splashColor: Colors.purple[100],
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: devwidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/paw-trail.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Partners in pethood',
                    style: TextStyle(fontFamily: 'Courgette'),
                  ),
                ])),
          ),
        ),
      ),
    );
  }
}

class qu4 extends StatefulWidget {
  @override
  _qu4State createState() => _qu4State();
}

class _qu4State extends State<qu4> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
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
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "For how long will your dog be alone",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "Very independent";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "For 4-8 hours",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "Moderate";
                              setState(() {
                                selectedbutton2 = true;
                                selectedbutton1 = false;
                                selectedbutton3 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton2
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "For 2-4 hours",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              temp = "Not independent";
                              setState(() {
                                selectedbutton3 = true;
                                selectedbutton2 = false;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton3
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "The dog would never be alone",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                            '~It is not advisable to leave your dog alone, for more than 8 hours. Such dogs end up facing separation anxiety.' +
                                '\n~No matter how independent your dog is, it will take a few days to adjust to your schedule.'

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => qu5()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class qu5 extends StatefulWidget {
  @override
  _qu5State createState() => _qu5State();
}

class _qu5State extends State<qu5> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
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
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "How active would you like your dog to be?",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "High";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "Very active",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "Medium";
                              setState(() {
                                selectedbutton2 = true;
                                selectedbutton1 = false;
                                selectedbutton3 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton2
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Moderate",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              temp = "Low";
                              setState(() {
                                selectedbutton3 = true;
                                selectedbutton2 = false;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton3
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Inactive",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                          '~All dog breeds need some form of exercise.' +
                          '\n~Both physical and mental exercise for the dog will keep it happy and healthy.'
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => qu6()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class qu6 extends StatefulWidget {
  @override
  _qu6State createState() => _qu6State();
}

class _qu6State extends State<qu6> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
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
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "How much shedding can you tolerate?",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "Frequent";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "High",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "Seasonal";
                              setState(() {
                                selectedbutton2 = true;
                                selectedbutton1 = false;
                                selectedbutton3 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton2
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Moderate",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              temp = "Low";
                              setState(() {
                                selectedbutton3 = true;
                                selectedbutton2 = false;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton3
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Low",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                            '~All dogs shed their old and damaged hair. But the frequency of shedding varies for each breed.' +
                             '\n~If you want to minimise your dog’s shedding, make sure to groom it regularly.'

                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => qu7()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class qu7 extends StatefulWidget {
  @override
  _qu7State createState() => _qu7State();
}

class _qu7State extends State<qu7> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                      height: 300.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "Do you have kids?",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,

                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "Yes";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "Yes, an infant and a toddler",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                              onPressed: () {
                                temp = "Yes";
                                setState(() {
                                  selectedbutton2 = true;
                                  selectedbutton1 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton2
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "Yes, either an infant or a toddler",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "No";
                              setState(() {
                                selectedbutton3 = true;
                                selectedbutton2 = false;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton3
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "No",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                            '~It takes time for both kids and dogs to adjust to each other. Hence, it is advised to adopt a dog that is child friendly.' +
                                '\n~Children who are 6 years and above are matured enough to welcome a pet in their house.'
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => qu8()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class qu8 extends StatefulWidget {
  @override
  _qu8State createState() => _qu8State();
}

class _qu8State extends State<qu8> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
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
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "What type of dog do you want",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "Yes";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "Guard Dog",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "No";
                              setState(() {
                                selectedbutton2 = true;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton2
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Companion Dog",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                            '~Dogs are broadly classified as guard dogs or companion dogs.' +
                            '\n~A guard dog is very ferocious and is not friendly to strangers.' + '\n~A companion dog is more welcoming.'

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => qu9()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class qu9 extends StatefulWidget {
  @override
  _qu9State createState() => _qu9State();
}

class _qu9State extends State<qu9> {
  bool selectedbutton1 = false;
  bool selectedbutton2 = false;
  bool selectedbutton3 = false;

  void addData(value) {
    datas.add(value);
    print(datas);
  }

  String temp = '';

  List<Color> _colors = [Colors.red[100], Colors.red[200], Colors.red[400]];

  @override
  Widget build(BuildContext context) {
    var devwidth = MediaQuery.of(context).size.width;
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome()));
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
                          fontFamily: 'Courgette',
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
                          end: Alignment.bottomCenter,
                          begin: Alignment.topRight,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text(
                              "Which diet would you provide your dog?",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                temp = "Doesn't require meat";
                                setState(() {
                                  selectedbutton1 = true;
                                  selectedbutton2 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton1
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "Vegan or Vegetarian",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                              onPressed: () {
                                temp = "Doesn't require meat";
                                setState(() {
                                  selectedbutton2 = true;
                                  selectedbutton1 = false;
                                  selectedbutton3 = false;
                                });
                              },
                              splashColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: selectedbutton2
                                  ? Colors.purple[200]
                                  : Colors.purple[50],
                              child: Text(
                                "Eggetarian",
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
                          RaisedButton(
                            onPressed: () {
                              temp = "Meat rich";
                              setState(() {
                                selectedbutton3 = true;
                                selectedbutton2 = false;
                                selectedbutton1 = false;
                              });
                            },
                            splashColor: Colors.purple[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: selectedbutton3
                                ? Colors.purple[200]
                                : Colors.purple[50],
                            child: Text(
                              "Meat rich",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[100], Colors.purple[200], ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: ListTile(
                          title: Text("Why is it important?"),
                          subtitle: Text(
                            '~Certain dog breeds require meat or egg as a source of protein, while the rest can sustain on plant based protein.'
                              '\n~Over feeding the dog will lead to it’s ill health.'

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        color: Colors.black54,
                        // highlightColor: Colors.red,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Courgette'),
                        ),
                        onPressed: () {
                          addData(temp);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApps()));
                        },
                        splashColor: Colors.purple[100],
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: devwidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/paw-trail.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Partners in pethood',
                      style: TextStyle(fontFamily: 'Courgette'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
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
