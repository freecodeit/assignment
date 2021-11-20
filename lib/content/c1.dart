import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class unit1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question No. 1',

      home: HomePage(),
    );

  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question No. 1'),
        actions: <Widget>[

        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SfPdfViewer.network(
              'https://raw.githubusercontent.com/freecodeit/assignment/main/Dl/one.pdf',
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