import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class xdHome extends StatelessWidget {
  Home({
    Key key,
  }) : super(key: key);
  List<Color> _colors = [Colors.blue, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-139.0, 0.0),
            child:
            // Adobe XD layer: '6a00d8341c192953ef0…' (shape)
            Container(
              width: 691.0,
              height: 877.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/pawpal_dog.jpg"),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Container(
            width: 412.0,
            height: 847.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0.34),
                end: Alignment(0.0, 1.0),
                colors: _colors,
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 381.0),
            child:
            // Adobe XD layer: 'main text' (group)
            SizedBox(
              width: 296.0,
              height: 161.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 296.0, 124.0),
                    size: Size(296.0, 161.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(26.0, 0.0, 262.0, 87.0),
                          size: Size(296.0, 124.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xcc090909),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 7.0, 296.0, 117.0),
                          size: Size(296.0, 124.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Pawpal',
                            style: TextStyle(
                              fontFamily: 'Gabriola',
                              fontSize: 80,
                              color: const Color(0xfffdf2f2),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.0, 107.0, 262.0, 54.0),
                    size: Size(296.0, 161.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 262.0, 54.0),
                          size: Size(262.0, 54.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xcc090909),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(32.0, 17.0, 180.0, 30.0),
                          size: Size(262.0, 54.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Partners in Pethood',
                            style: TextStyle(
                              fontFamily: 'Gabriola',
                              fontSize: 30,
                              color: const Color(0xffe25858),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}