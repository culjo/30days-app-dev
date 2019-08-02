import 'package:days_app_dev/finallook/home/home_screen.dart';
import 'package:days_app_dev/finallook/journals/my_journals_screen.dart';
import 'package:days_app_dev/finallook/newtrip/new_trip_screen.dart';
import 'package:flutter/material.dart';

class ParentHomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParentHomeScreen();
}

class _ParentHomeScreen extends State<ParentHomeScreen> {
  int currentPageIndex = 0;
  List screenList = [
    HomeScreen(),
    NewTripScreen(),
    MyJournalsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Title")),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.create), title: Text("New Journal")),
            BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted), title: Text("Journals"))
          ],
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
        ),
        body: screenList[currentPageIndex]);
  }
}
