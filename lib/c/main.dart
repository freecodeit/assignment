import 'package:assignment/c/setaq.dart';
import 'package:assignment/c/setbq.dart';
import 'package:flutter/material.dart';

class cprogramming extends StatefulWidget {
  @override
  _cprogrammingState createState() => _cprogrammingState();
}

class _cprogrammingState extends State<cprogramming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C Programming'),
        centerTitle: true,
      ),
 body: SingleChildScrollView(
    child:  Center(
    child: Column(
      children: [
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 70.0,
        ),

        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Life()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints:
                BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "Set A ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => setb()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints:
                BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "Set B ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ),


        SizedBox(
          height: 120.0,
        )
      ],
    )
    ],
    ),
    ),

    ),
    );
  }
}

