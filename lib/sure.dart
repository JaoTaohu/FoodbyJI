import 'package:flutter/material.dart';
import 'package:flutter_application_kru_tong/finish%20paid.dart';
import 'package:flutter_application_kru_tong/home.dart';

class Sure extends StatefulWidget {
  final kon;
  Sure({this.kon});

  @override
  _SureState createState() => _SureState();
}

class _SureState extends State<Sure> {
  int _n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Book a Table',
            style: TextStyle(fontSize: 25, color: Colors.blue[800]),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 540,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "${widget.kon.toString()} Persons",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(73, 220, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Are you sure to book a table? ',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Divider(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(36, 350, 0, 0),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Finish()));
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[300],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.money_off_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
