import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 6',

      home: HomePage6(),
    );

  }
}

class HomePage6 extends StatefulWidget {
  @override
  _HomePage6 createState() => _HomePage6();
}

class _HomePage6 extends State<HomePage6> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 6'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
            child: Column(
              children: [
    SfPdfViewer.network(
      'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/sis.pdf',
      key: _pdfViewerKey,
    ),
                SizedBox(
                  height: 120.0,
                ),
              ],
            )

        )
    );

  }
}