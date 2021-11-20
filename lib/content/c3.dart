import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 3',

      home: HomePage3(),
    );

  }
}

class HomePage3 extends StatefulWidget {
  @override
  _HomePage3 createState() => _HomePage3();
}

class _HomePage3 extends State<HomePage3> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 3'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
            child: Column(
              children: [
    SfPdfViewer.network(
      'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/three.pdf',
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