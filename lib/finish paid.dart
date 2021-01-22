import 'package:flutter/material.dart';
import 'package:flutter_application_kru_tong/home.dart';

class Finish extends StatefulWidget {
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
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
                      Stack(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(92, 220, 0, 0),
                            child: Text(
                              'Your book is complete!',
                              style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 16,
                              ),
                            )),
                        Center(
                            child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen[300],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.assignment_turned_in_outlined,
                            color: Colors.white,
                            size: 60,
                          ),
                        )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 350, 20, 0),
                            child: Row(children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  },//ตรงHomeจะเปลี่ยนไปเชื่อมกับหน้าหลักที่เพื่อนทำ
                                  child: Container(
                                    height: 90,
                                    width: 310,
                                    decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                      color: Colors.red[300],
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Center(
                                      child: Text(
                              'Back to Main Menu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                                    ),
                                  ))
                            ]))
                      ])
                    ]))));
  }
}
