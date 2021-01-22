import 'package:flutter/material.dart';
import 'sure.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Book a Table',
              style: TextStyle(fontSize: 25,color: Colors.blue[800]),
            ),
            centerTitle: true,
            actions: [
              IconButton(icon: Icon(Icons.notifications,color: Colors.blue[800],), onPressed: () {})
            ],
          ),
          
          body: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                child: Row(
                  children: <Widget>[
                    Text(
                      "ลำดับการจองโต๊ะ",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                child: Row(
                  children: <Widget>[
                    Text(
                      "ของ หนอนทอดลุงอึ่ง By คุณหรีด",
                      style: TextStyle(color: Colors.blue[800], fontSize: 20),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    //color: Colors.redAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.person_add_outlined,
                                color: Colors.blue[800],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Number of Person",
                                style: TextStyle(color: Colors.blue[800]),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                                child: Text(
                                  '4 persons',
                                  style: TextStyle(color: Colors.blue[800]),
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Divider(
                            color: Colors.blue[800],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.date_range_outlined,
                                color: Colors.blue[800],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "DATE",
                                style: TextStyle(color: Colors.blue[800]),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                                child: Text(
                                  'June 8, 2017',
                                  style: TextStyle(color: Colors.blue[800]),
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Divider(color: Colors.blue[800]),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star_outline_outlined,
                                color: Colors.blue[800],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "ISSUER",
                                style: TextStyle(color: Colors.blue[800]),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                                child: Text(
                                  'Chonakan Chumtap',
                                  style: TextStyle(color: Colors.blue[800]),
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Divider(color: Colors.blue[800]),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.confirmation_number_outlined,
                                color: Colors.blue[800],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "ORDER NUMBER",
                                style: TextStyle(color: Colors.blue[800]),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                                child: Text(
                                  'YDKSOJDU2SDY',
                                  style: TextStyle(color: Colors.blue[800]),
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Divider(color: Colors.blue[800]),
                        ),
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Sure()));
                },
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'CONTINUE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
