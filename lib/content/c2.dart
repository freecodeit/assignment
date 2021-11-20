import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 2',

      home: HomePage2(),
    );

  }
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2 createState() => _HomePage2();
}

class _HomePage2 extends State<HomePage2> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 2'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),
   body: SingleChildScrollView(
    child: Column(
    children: [
      SfPdfViewer.network(
        'https://raw.githubusercontent.com/freecodeit/assignment/dafbbd4d4504a0ea23ef1cc2096cd82db3507dee/Dl/two.pdf',
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