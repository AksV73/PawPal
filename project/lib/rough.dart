import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/quizfile.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: adobe(),

    );
  }
}

class adobe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       // sizedBox(
         // height: 586.0,
          //width: 200.0,
          //child: Text('Hello')
        //),
    );
  }
}

// Adobe XD layer: 'dog-paw-vector-2615…' (shape)
//Container(sizedBox,
//width: 71.5,
//height: 73.0,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(36.0),
//image: DecorationImage(
//image: const AssetImage('images/icon.jpg'),
//fit: BoxFit.fill,
//),
//),
//);
//
//SizedBox(
//width: 315.0,
//height: 86.0,
//child: Stack(
//children: <Widget>[
//Pinned.fromSize(
//bounds: Rect.fromLTWH(0.0, 0.0, 315.0, 86.0),
//size: Size(315.0, 86.0),
//pinLeft: true,
//pinRight: true,
//pinTop: true,
//pinBottom: true,
//child: Stack(
//children: <Widget>[
//Pinned.fromSize(
//bounds: Rect.fromLTWH(0.0, 0.0, 315.0, 86.0),
//size: Size(315.0, 86.0),
//pinLeft: true,
//pinRight: true,
//pinTop: true,
//pinBottom: true,
//child: Container(
//decoration: BoxDecoration(
//color: const Color(0x4df74a00),
//),
//),
//),
//Pinned.fromSize(
//bounds: Rect.fromLTWH(15.0, 9.0, 199.0, 71.0),
//size: Size(315.0, 86.0),
//pinLeft: true,
//pinTop: true,
//pinBottom: true,
//fixedWidth: true,
//child: SingleChildScrollView(
//child: Text(
//'Pawpal',
//style: TextStyle(
//fontFamily: 'Gabriola',
//fontSize: 80,
//color: const Color(0xff0e0e0e),
//),
//textAlign: TextAlign.center,
//)),
//),
//],
//),
//),
//Pinned.fromSize(
//bounds: Rect.fromLTWH(207.0, 13.0, 71.5, 73.0),
//size: Size(315.0, 86.0),
//pinRight: true,
//pinBottom: true,
//fixedWidth: true,
//fixedHeight: true,
//child:
//// Adobe XD layer: 'dog-paw-vector-2615…' (shape)
//Container(
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(36.0),
//image: DecorationImage(
//image: const AssetImage('images/icon.jpg'),
//fit: BoxFit.fill,
//),
//),
//),
//),
//],
//),
//);

class Ques extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pawpal",
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.pets),
            iconSize: 10.0,
          ),
          IconButton(
              icon: Icon(Icons.home),
              iconSize: 10.0,
              tooltip: 'Go to Home',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
              },
          ),
        ],
      ),
    );
  }
}

class qu1 extends StatelessWidget {
  void addData(value){
    datas.add(value);
    print(datas);
  }
  String temp = '';
  List<Color> _colors = [Colors.green[500], Colors.yellow[100]];
  @override
  Widget build(BuildContext context)
  {
    var devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Pawpal",
            textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
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
              padding: EdgeInsets.all(15.0),
            ),
            Container(
              height: 50.0,
              width: devwidth - 10.0,
              color: Colors.white24,
              child: Text(
                'Question 1',
                style: TextStyle( fontSize: 30.0 ),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
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
                      style: TextStyle( fontSize: 20.0),
                    ),
                  ),
                  RaisedButton(
                      onPressed: (){
                        temp = "apartment ";
                      },
                      highlightColor: Colors.green,
                      child: Text("An apartment")),

                  RaisedButton(
                    onPressed: (){
                      temp = "independent house";
                    },
                    highlightColor: Colors.green,
                    child: Text("An Independent house"),
                  ),
                  RaisedButton(
                    onPressed: (){ temp = "ranch"; },
                    highlightColor: Colors.green,
                    child: Text("A farmhouse/ranch"),
                  ),
                ],
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              highlightColor: Colors.red,
              child: Text('next'),
              onPressed: () {

                addData(temp);
                Navigator.push(context, MaterialPageRoute(builder: (context) => qu2()));
              },
            )
          ],

        )
    );

  }
}








