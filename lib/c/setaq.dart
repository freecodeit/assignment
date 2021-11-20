import 'package:assignment/drawer.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
class Life extends StatefulWidget {
  @override
  _LifeState createState() => _LifeState();
}

class _LifeState extends State<Life> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('assets/c1.txt');
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('C Programming Set A'),
        ),
        drawer: MyDrawer(),
        body: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.topLeft,

                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(
                            data,
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,

                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 120.0,
                  ),
                ]),
              ),
            )
        ) ,
      ),
    );
  }
}
