import 'package:flutter/material.dart';

void main()  {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PawPal(),
      routes: <String, WidgetBuilder> {
        '/welcome page' : (context) => categories(),
        '/categories' : (context) => categories(),
        '/category1' : (context) => Category1(),
      },
    );
  }
}


class PawPal extends StatelessWidget {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/welcome page');
        },
        child: Text('temp'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the world of dogs'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
//              padding: EdgeInsets.all(2.0),
              color: Colors.cyanAccent,
              child: Text('Write about us'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
//                    Navigator.pushNamed(context, '/categories');
                  },
                  child: Text('Breed Selector')
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
              child: Text('more infor- tbd')
          ),
        ],
      ),
    );
  }
}


class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text('QUIZ- Categories'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/category1');
                  },
                  child: Text("Category 1"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Category 2"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                  child: Text("Category 3"),
              ),
              FlatButton(
                  onPressed: () {},
                child: Text("Category 4"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class Category1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Category1state();
  }
}

class Category1state extends State<Category1> {
  var questionIndex = 0;

  void ansQues() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'ques1 - drooling',
      'ques2',
      'ques3',
      'ques4'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Category1'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            questions[questionIndex],
          ),
          RaisedButton(onPressed: ansQues,
          child: Text('ans1'),
          ),
          RaisedButton(onPressed: ansQues,
            child: Text('ans2'),
          ),
          RaisedButton(onPressed: ansQues,
            child: Text('ans3'),
          ),
          RaisedButton(onPressed: ansQues,
            child: Text('ans4'),
          ),
        ],
      ),
    );
  }
}
























//class Categories extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey[900],
//      appBar: AppBar(
//        title: Text('Categories'),
//        centerTitle: true,
//        backgroundColor: Colors.grey[850],
//        elevation: 0.0,
//      ),
//      body: Padding(
//        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Center(
//              child: CircleAvatar(
//                radius: 40.0,
//                backgroundImage: AssetImage('assets/thumb.jpg'),
//              ),
//            ),
//            Divider(
//              color: Colors.grey[800],
//              height: 60.0,
//            ),
//            Text(
//              'NAME',
//              style: TextStyle(
//                color: Colors.grey,
//                letterSpacing: 2.0,
//              ),
//            ),
//
//            SizedBox(height: 30.0),
//            Row(
//              children: <Widget>[
//                Icon(
//                  Icons.email,
//                  color: Colors.grey[400],
//                ),
//                SizedBox(width: 10.0),
//                Text(
//                  'chun.li@thenetninja.co.uk',
//                  style: TextStyle(
//                    color: Colors.grey[400],
//                    fontSize: 18.0,
//                    letterSpacing: 1.0,
//                  ),
//                )
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}


