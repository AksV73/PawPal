import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';

class xdGooglePixel3XL1 extends StatelessWidget {
  xdGooglePixel3XL1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-32.0, 0.0),
            child: SizedBox(
              width: 458.0,
              height: 86.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.0, 0.0, 424.0, 86.0),
                    size: Size(458.0, 86.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0x4df74a00),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 8.0, 458.0, 77.0),
                    size: Size(458.0, 86.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Pawpal',
                      style: TextStyle(
                        fontFamily: 'Gabriola',
                        fontSize: 80,
                        color: const Color(0xff0e0e0e),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 95.0),
            child:
                // Adobe XD layer: 'animals-2607704' (shape)
                Container(
              width: 412.5,
              height: 276.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/1_1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 371.0),
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}].map((map) {
                  return SizedBox(
                    width: 373.0,
                    height: 227.0,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 373.0,
                          height: 227.0,
                          child: SingleChildScrollView(
                              child: Text(
                            'Welcome everyone to the world of dogs \nWhere everything is about drooling and paws\n\nAnd a woof every now and then\nWhen a hooman rubs my tummy and go amen\n\nAnd a wag in my tail \nWhen I play with a butterfly and garden snail\n\nAnd I lick to my heart’s content \nA big bowl of peanut butter with my vet’s content \n\nAnd I run quickly towards the ball\nWhen my hooman said, “Fetch! Before the night befalls!”.\n',
                            style: TextStyle(
                              fontFamily: 'Gabriola',
                              fontSize: 20,
                              color: const Color(0xff0e0e0e),
                              height: 0.75,
                            ),
                            textAlign: TextAlign.right,
                          )),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 605.0),
            child: SizedBox(
              width: 274.0,
              height: 55.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 274.0, 55.0),
                    size: Size(274.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0x8fff2200),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.0, 12.0, 239.0, 32.0),
                    size: Size(274.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 17,
                          color: const Color(0xff131211),
                        ),
                        children: [
                          TextSpan(
                            text: 'Take the breed selector quiz!',
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 668.0),
            child:
                // Adobe XD layer: 'adult-female-girl-w…' (shape)
                Container(
              width: 412.0,
              height: 274.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('images/1_2.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 965.0),
            child: SizedBox(
              width: 412.0,
              height: 238.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 20,
                    color: const Color(0xff131211),
                  ),
                  children: [
                    TextSpan(
                      text: 'Finding the right breed for you  \n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          'At PawPal, we believe in that magical bond between people and their pets, and that together we can live richer, happier lives. Our pets are more than just pets, they\'re our best friends, closest confidants and family members. Owning a dog is hugely rewarding, but it\'s also a big responsibility. You may be wondering which dog breed you should get, which is why we\'re here to help you find a breed that suits your unique lifestyle to ensure that you can both share happy adventures together.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 1224.0),
            child:
                // Adobe XD layer: 'pets-586929' (shape)
                Container(
              width: 412.5,
              height: 274.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/1_3.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 1520.0),
            child: SizedBox(
              width: 412.0,
              height: 238.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 20,
                    color: const Color(0xff131211),
                  ),
                  children: [
                    TextSpan(
                      text: 'Matching your lifestyle with their needs  \n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          'All dogs have their own unique personality, but there are some instincts and behaviours that they\'re born with. If a dog\'s breed is likely to be an avid noise maker, don\'t let it put you off! They can learn to be quieter, it\'ll just require time and kindness on your part to educate them, as being quiet may go against their nature. Our dog breed selector can help match the natural predispositions of a dog to your lifestyle, which will ensure that you both can live a happy and fulfilling life together.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 1780.0),
            child:
                // Adobe XD layer: '4-Dogs-on-Grass_copy' (shape)
                Container(
              width: 412.0,
              height: 274.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/1_4.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 2076.0),
            child: SizedBox(
              width: 412.0,
              height: 179.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 20,
                    color: const Color(0xff131211),
                  ),
                  children: [
                    TextSpan(
                      text: 'More choice and flexibility  \n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We understand that the bond between people and their dogs differs from one household to another, that\'s why we\'ll show you which breeds seem most suited to your preferences, as well as those which might not be. Our dog breed selector tool can help steer you in the right direction, leading you closer to your perfect match.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 2255.0),
            child: SizedBox(
              width: 274.0,
              height: 55.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 274.0, 55.0),
                    size: Size(274.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0x8fff2200),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.0, 12.0, 239.0, 32.0),
                    size: Size(274.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 17,
                          color: const Color(0xff131211),
                        ),
                        children: [
                          TextSpan(
                            text: 'Take the breed selector quiz!',
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(90.0, 2342.0),
            child: SizedBox(
              width: 238.0,
              height: 32.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 238.0, 32.0),
                    size: Size(238.0, 32.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2de48f),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(90.0, 2344.0),
            child: SizedBox(
              width: 232.0,
              height: 30.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Gabriola',
                    fontSize: 30,
                    color: const Color(0xff0e0e0e),
                  ),
                  children: [
                    TextSpan(
                      text: 'Pawpal ~ ',
                    ),
                    TextSpan(
                      text: 'Partners in pethood',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
