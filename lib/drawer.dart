
import 'package:assignment/c/main.dart';
import 'package:assignment/content/dl.dart';
import 'package:assignment/iit/main.dart';
import 'package:assignment/main.dart';
import 'package:assignment/phy/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.blueAccent,
              child: Center(

                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/image.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'freecode',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'RobotoMono',
                        color: Colors.white,
                      ),

                    ),
                  ],
                ),
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home() ),
                  );
                }
            ),
            ListTile(
                leading: Icon(
                  Icons.memory,
                ),
                title: Text('Digital Logic'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => digitallogic() ),
                  );
                }
            ),
            ListTile(
                leading: Icon(
                  Icons.computer,
                ),
                title: Text('C programming'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cprogramming() ),
                  );
                }
            ),
            ListTile(
                leading: Icon(
                  Icons.settings_input_component,
                ),
                title: Text('IIT'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => iitpra() ),
                  );
                }
            ),
            ListTile(
                leading: Icon(
                  Icons.attractions,
                ),
                title: Text('Physics'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => phy() ),
                  );
                }
            ),
            ListTile(
              leading: Icon(
                Icons.system_update,
              ),
              title: Text('Update'),
              onTap:(){
                String url= "https://drive.google.com/drive/folders/1WQ8F-Gy4Ps1RYEdCo-sLAsqXFG4GTZoO";
                launch(url);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.video_collection,
              ),
              title: Text('Youtube'),
              onTap:(){
                String url= "https://www.youtube.com/freecode";
                launch(url);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app_rounded,
              ),
              title: Text('Exit',
              style: TextStyle(
                color: Colors.redAccent
              ),
              ),
              onTap:(){
               SystemNavigator.pop();
              },
            ),

          ],
      ),
        ),
      );


  }
}
