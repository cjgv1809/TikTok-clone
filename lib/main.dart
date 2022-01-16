// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: UITiktok()),
        bottomNavigationBar: _bottomNav(),
      ),
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Image.asset('icons/inicio.png'),
            ),
            title: Text(
              'Inicio',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Image.asset('icons/tendencias.png'),
            ),
            title: Text(
              'Tendencias',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Image.asset('icons/plus.png'),
              ),
              title: Container()),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Image.asset('icons/bandeja.png'),
            ),
            title: Text(
              'Bandeja',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Image.asset('icons/yo.png'),
            ),
            title: Text(
              'Yo',
              style: TextStyle(fontSize: 10),
            ),
          )
        ]);
  }
}

class UITiktok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('images/urona_rolera.jpg',
            fit: BoxFit.cover, height: double.infinity),
        _blackGradient(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _topNav(),
            Column(
              children: <Widget>[
                _interactionButtons(),
                _postData(),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _blackGradient() {
    return Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
      // ignore: prefer_const_constructors
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // ignore: prefer_const_literals_to_create_immutables
          colors: <Color>[
            Colors.black87,
            Colors.black12,
            Colors.black26,
            Colors.black54,
            Colors.black87
          ]),
    ));
  }

  Widget _topNav() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text(
                'Siguiendo',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 8),
              Container(color: Colors.white, width: 40, height: 2)
            ],
          ),
          SizedBox(width: 30),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text(
                'Para Ti',
                style: TextStyle(fontSize: 18, color: Colors.white54),
              ),
              SizedBox(height: 8),
              Container(color: Colors.white54, width: 40, height: 2)
            ],
          ),
        ],
      ),
    );
  }

  Widget _interactionButtons() {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white),
            ),
            child: ClipOval(
              child: Image.network(
                  'https://pbs.twimg.com/media/ECZzynSWwAA9M5m.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 25),
          Image.asset('icons/corazon.png'),
          SizedBox(height: 5),
          Text(
            '169.2k',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
          SizedBox(height: 20),
          Image.asset('icons/comentarios.png'),
          SizedBox(height: 5),
          Text(
            '5109',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
          SizedBox(height: 20),
          Image.asset('icons/compartir.png'),
          SizedBox(height: 5),
          Text(
            '119',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _postData() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 5, bottom: 10),
      child: Column(
        children: <Widget>[
          // ignore: prefer_const_literals_to_create_immutables
          Row(children: <Widget>[
            Text(
              '@huronarolera',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Text(
              '03-05',
              style: TextStyle(color: Colors.white54),
            )
          ]),
          SizedBox(height: 15),
          Row(children: <Widget>[
            // ignore: prefer_const_literals_to_create_immutables
            Flexible(
              child: Column(
                children: <Widget>[
                  Text(
                    'MENCIONADME EN AUDIOS QUE QUERAIS QUE HAGA, POR FA!!',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'icons/musica.png',
                        width: 20,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'rolera - Dana',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'sonido original',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white24, width: 10),
              ),
              child: ClipOval(
                child: Image.network(
                    'https://pbs.twimg.com/media/ECZzynSWwAA9M5m.jpg',
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover),
              ),
            )
          ])
        ],
      ),
    );
  }
}
