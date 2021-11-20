import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 12',

      home: HomePage12(),
    );

  }
}

class HomePage12 extends StatefulWidget {
  @override
  _HomePage12 createState() => _HomePage12();
}

class _HomePage12 extends State<HomePage12> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 12'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
            child: Column(
              children: [
    SfPdfViewer.network(
      'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/twelve.pdf',
      key: _pdfViewerKey,
    ),
                SizedBox(
                  height: 70.0,
                ),
              ],
            )

        )
    );

  }
}