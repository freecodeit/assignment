import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 5',

      home: HomePage5(),
    );

  }
}

class HomePage5 extends StatefulWidget {
  @override
  _HomePage5 createState() => _HomePage5();
}

class _HomePage5 extends State<HomePage5> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 5'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
            child: Column(
              children: [
    SfPdfViewer.network(
      'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/five.pdf',
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