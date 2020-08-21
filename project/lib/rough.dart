import 'package:flutter/material.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: adobe(),
      },
    );
  }
}

class adobe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        sizedBox(
          height: 586.0,
          width 200.0,
          child: Text('Hello')
        ),
    )
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