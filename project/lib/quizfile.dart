import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';


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
        body: Container(
//          decoration: BoxDecoration(
//            image: DecorationImage(
//              image: AssetImage('images/1_1.jpg'),
//              fit: BoxFit.fill,
//
//            )
//          ),
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
                              "What kind of accommodation would you provide your dog ?",
                            style: TextStyle( fontSize: 20.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
                          ),
                        ),
                        RaisedButton(
                            onPressed: (){
                              temp = "apartment ";
                            },
                            highlightColor: Colors.green,
                            child: Text("An apartment",
                            style: TextStyle( fontFamily: 'Roboto'),
                            )),
                        RaisedButton(
                          onPressed: (){
                            temp = "independent house";
                          },
                          highlightColor: Colors.green,
                          child: Text("An Independent house",
                            style: TextStyle( fontFamily: 'Roboto'),
                          ),
                        ),
                        RaisedButton(
                          onPressed: (){ temp = "ranch"; },
                          highlightColor: Colors.green,
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
                      highlightColor: Colors.red,
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
              child: Text("How much barking can you tolerate ?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: (){
                        temp = "high";
                      },
                      highlightColor: Colors.green,
                      child: Text("Enough to blow the roof off!")),

                  RaisedButton(
                    onPressed: (){
                      temp = "low";
                    },
                    child: Text("A woof once in a while "),
                  ),
                  RaisedButton(
                    onPressed: (){
                      temp = "moderate";
                    },
                    child: Text("Somewhere in between the two"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => qu3()));
                    },
                  )
                ]
            ),
          ],
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
              child: Text("For How long will your dog be alone ?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: (){
                        temp = "very independent";
                      },
                      child: Text("For 8-10 hrs")),

                  RaisedButton(
                    onPressed: (){
                      temp = "moderate";
                    },
                    child: Text("For 4-6 hrs"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      temp = "not independent";
                    },
                    child: Text("The dog would never be alone"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => qu4()));
                    },
                  )
                ]
            ),
          ],
        )

    );

  }

}

class qu4 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
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
              child: Text("How active would you like your dog to be ?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: (){
                        temp = "high";
                      },
                      highlightColor: Colors.green,
                      child: Text("very active")),

                  RaisedButton(
                    onPressed: (){
                      temp = "medium";
                    },
                    highlightColor: Colors.green,
                    child: Text("moderate"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      temp = "low";
                    },
                    highlightColor: Colors.green,
                    child: Text("inactive"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => qu5()));
                    },
                  )
                ]
            ),
          ],
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
              child: Text("How much shedding can you tolerate?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: (){
                        temp = "frequent";
                      },
                      highlightColor: Colors.green,
                      child: Text("high")),

                  RaisedButton(
                    onPressed: (){
                      temp = "seasonal";
                    },
                    highlightColor: Colors.green,
                    child: Text("moderate"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      temp = "low";
                    },
                    highlightColor: Colors.green,
                    child: Text("low"),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => qu6()));
                    },
                  )
                ]
            ),
          ],
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
              child: Text("Do you have kids below the age of 12 ?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: (){
                        temp = "yes";
                      },
                      highlightColor: Colors.green,
                      child: Text("yes")),

                  RaisedButton(
                    onPressed: (){
                      temp = "no";
                    },
                    highlightColor: Colors.green,
                    child: Text("no"),
                  ),


                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => qu7()));
                    },
                  )
                ]
            ),
          ],
        )

    );

  }

}

class qu7 extends StatelessWidget {
  void addData(value) {
    datas.add(value);
    print(datas);
  }
  String temp = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 7"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text("What kind of dog do you want ?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: () {
                        temp = "yes";
                      },
                      highlightColor: Colors.green,
                      child: Text("Guard")),

                  RaisedButton(
                    onPressed: () {
                      temp = "no";
                    },
                    highlightColor: Colors.green,
                    child: Text("Companion"),
                  ),


                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => qu8()));
                    },
                  )
                ]
            ),
          ],
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
              child: Text("Which diet would you provide your dog ?"),
            ),
            Column(
                children: <Widget>[
                  RaisedButton(
                      onPressed: (){
                        temp = "not particular";
                      },
                      highlightColor: Colors.green,
                      child: Text("vegan/vegetarian")),

                  RaisedButton(
                    onPressed: (){
                      temp = "meat rich";
                    },
                    highlightColor: Colors.green,
                    child: Text("diet with meat"),
                  ),


                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    child: Text('next'),
                    onPressed: () {
                      addData(temp);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => preferance1()));
                    },
                  )
                ]
            ),
          ],
        )

    );

  }

}

class preferance1 extends StatelessWidget {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your preferances'),
      ),
      body: Column(
        children: <Widget>[
          Container(

              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    child: Text('What is your first preferance ?'),
                  ),
                  RaisedButton(
                    onPressed: (){
                      firstchoice = 0;
                    },
                    highlightColor: Colors.green,
                    child: Text('Accomodation'),
                  ),
                  RaisedButton(
                    onPressed: (){
                      firstchoice = 1;
                    },
                    highlightColor: Colors.green,
                    child: Text('Barking ability'),
                  ),
                  RaisedButton(
                    onPressed: (){
                      firstchoice = 2;
                    },
                    highlightColor: Colors.green,
                    child: Text('Independent nature '),
                  ),

                  RaisedButton(
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context) => preferance2()));
                    },
                    color: Colors.red,
                    highlightColor: Colors.green,
                    child: Text('Next'),
                  )

                ],
              ),

          ),
        ],
      ),
    );
  }
}

class preferance2 extends StatelessWidget {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your preferances'),
      ),
      body: Column(
        children: <Widget>[
          Container(

            child: Column(
              children: <Widget>[
                FlatButton(
                  onPressed: (){},
                  child: Text('What is your second preferance ?'),
                ),
                RaisedButton(
                  onPressed: (){
                    secondchoice = 3;
                  },
                  highlightColor: Colors.green,
                  child: Text('Activity level'),
                ),
                RaisedButton(
                  onPressed: (){
                    secondchoice = 4;
                  },
                  child: Text('Shedding'),
                ),
                RaisedButton(
                  onPressed: (){
                    secondchoice = 5;
                  },
                  highlightColor: Colors.green,
                  child: Text('Kids '),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => preferance3()));
                  },
                  color: Colors.red,
                  highlightColor: Colors.green,
                  child: Text('Next'),
                )

              ],
            ),

          ),
        ],
      ),
    );
  }

}

class preferance3 extends StatelessWidget {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your preferances'),
      ),
      body: Column(
        children: <Widget>[
          Container(

            child: Column(
              children: <Widget>[
                FlatButton(
                  onPressed: (){},
                  child: Text('What is your third preferance ?'),
                ),
                RaisedButton(
                  onPressed: (){
                    thirdchoice = 6;
                  },
                  highlightColor: Colors.green,
                  child: Text('Guard/Companion'),
                ),
                RaisedButton(
                  onPressed: (){
                    thirdchoice = 7;
                  },
                  highlightColor: Colors.green,
                  child: Text('Diet'),
                ),

                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApps()));
                  },
                  color: Colors.red,
                  highlightColor: Colors.green,
                  child: Text('Results!'),
                )

              ],
            ),

          ),
        ],
      ),
    );
  }

}

