import 'package:days_app_dev/basehome/base_home_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _IntroScreenState();
}

class _IntroScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  "images/back-drop1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.all(40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Keep Your",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "TRAVEL'S",
                    style: TextStyle(color: Theme.of(context).accentColor, fontSize: 58.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: .0),
                    child: Text(
                      "Closer",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 100.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (contextt) => BaseHomeScreen()));
                            },
                            padding: EdgeInsets.all(20.0),
                            color: Colors.white.withOpacity(0.2),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                            child: Text(
                              "Start Your Journal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
