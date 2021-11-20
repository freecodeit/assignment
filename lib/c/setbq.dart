import 'package:assignment/drawer.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
class setb extends StatefulWidget {
  @override
  _setbState createState() => _setbState();
}

class _setbState extends State<setb> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('assets/c2.txt');
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
          title: Text('C Programming Set B'),
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
                  )
                ]),
              ),
            )
        ) ,
      ),
    );
  }
}
