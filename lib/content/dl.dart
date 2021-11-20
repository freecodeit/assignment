import 'package:assignment/drawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:assignment/content/c1.dart';
import 'package:assignment/content/c10.dart';
import 'package:assignment/content/c11.dart';
import 'package:assignment/content/c12.dart';
import 'package:assignment/content/c2.dart';
import 'package:assignment/content/c3.dart';
import 'package:assignment/content/c4.dart';
import 'package:assignment/content/c5.dart';
import 'package:assignment/content/c6.dart';
import 'package:assignment/content/c7.dart';
import 'package:assignment/content/c8.dart';
import 'package:assignment/content/c9.dart';
class digitallogic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Digital();
  }
}
class Digital extends StatefulWidget {
  @override
  _DigitalState createState() => _DigitalState();
}

class _DigitalState extends State<Digital> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['digital logic, and gate, or gate, k-map'],

    testDevices: <String>[
      "DFA6105082539C4C7FD519A97B3C26B0"
    ], // Android emulators are considered test devices
  );
  BannerAd myBanner = BannerAd(
    // Replace the testAdUnitId with an ad unit id from the AdMob dash.
    // https://developers.google.com/admob/android/test-ads
    // https://developers.google.com/admob/ios/test-ads
    adUnitId:'ca-app-pub-7404114267558155/5945620734',
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );
  InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: 'ca-app-pub-7404114267558155/3227123908',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  RewardedVideoAd videoAd = RewardedVideoAd.instance;
  @override
  void initState() {
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );
    myBanner
    // typically this happens well before the ad is shown
      ..load()
      ..show(
        // Positions the banner ad 60 pixels from the bottom of the screen
        anchorOffset: 0.0,
        // Positions the banner ad 10 pixels from the center of the screen to the right
        horizontalCenterOffset: 0.0,
        // Banner Position
        anchorType: AnchorType.bottom,
      );
    videoAd.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {

      if (event == RewardedVideoAdEvent.rewarded) {

      }
    };
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-7404114267558155~6929090411');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('DIgital Logic'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 1) Realize three input NOR,NAND, OR Gates with logic diagram and truth table.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage2()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 2) Realize the given function with logic diagram and truth table.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);
                      videoAd.show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage3()),
                      );
                    },

                    child: Column(
                      children: [

                        Text(' (Q.No 3) Verify D-Morgans Theorem for 2 variable.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage4()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 4) Realize NAND and NOR as universal logic gate with logic diagram and truth table.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage5()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 5) Realize the given function with logic diagram and truth table. Simpligy the given function with K-map. Realize using logic gates and truth table.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);
                      videoAd.show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage6()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 6) Draw a K-Map and simplify with the help of given truth table for both SOP and POS realize simplified function with basic gates, NAND gates for SOP and basic gates, NOR gates for POS.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage7()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 7) Simplify F(A,B,C,D)= E(0,1,2,6,7,9,14) & Ed(4,5,8,15) using both SOP & POS. Draw logic diagram of simplified function with truth table.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage8()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 8) Implement the Clocked SR flipflops with logic gate and verify its outputs using characteristics table also use the graphic symbol to verify the result.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);
                      videoAd.show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage9()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 9) Implement the logic diagram of JK flipflop & verify its result using characteristics table. Also use the inbuilt function to verify the result.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage10()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 10) Implement D-flipfop using logic gate & verify its result using characteristics table. Also use inbuilt block to verify the result.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage11()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 11) Implement the T flipflop & verify its characteristics table use the inbuilt block to verify the result.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                    onPressed: () {
                      videoAd.load(
                          adUnitId: 'ca-app-pub-7404114267558155/9578045303',
                          targetingInfo: targetingInfo);
                      videoAd.show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage12()),
                      );
                    },

                    child: Column(
                      children: [

                        Text('(Q.No 12) Realize full adder with logic diagram and truth table in both SOP & POS.',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 120.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
