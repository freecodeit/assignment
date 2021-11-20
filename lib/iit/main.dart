import 'package:assignment/drawer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class iitpra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IIT Pratical',

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
          title: Text('IIT Pratical'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
            child: Column(
              children: [
                SfPdfViewer.network(
                  'https://raw.githubusercontent.com/freecodeit/assignment/main/iitpra.pdf',
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