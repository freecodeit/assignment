import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 10',

      home: HomePage10(),
    );

  }
}

class HomePage10 extends StatefulWidget {
  @override
  _HomePage10 createState() => _HomePage10();
}

class _HomePage10 extends State<HomePage10> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 10'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
            child: Column(
              children: [
    SfPdfViewer.network(
      'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/ten.pdf',
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