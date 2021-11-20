import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 7',

      home: HomePage7(),
    );

  }
}

class HomePage7 extends StatefulWidget {
  @override
  _HomePage7 createState() => _HomePage7();
}

class _HomePage7 extends State<HomePage7> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 7'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
            child: Column(
              children: [
    SfPdfViewer.network(
      'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/seven.pdf',
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