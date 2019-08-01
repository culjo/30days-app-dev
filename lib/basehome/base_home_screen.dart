import 'package:flutter/material.dart';

class BaseHomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BaseHomeScreen();
}

class _BaseHomeScreen extends State<BaseHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Title")),
      bottomNavigationBar: BottomAppBar(),
      body: SafeArea(
        child: Container(
          // color: Colors.red.shade50,
          child: Column(
            children: <Widget>[
              Container(
                height: 52.0,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      size: 22.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          filled: false,
                          isDense: true,
                          hintText: "Search",
                          border: InputBorder.none),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "My Trips",
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "My last months journals",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "View all",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Theme.of(context).accentColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Row(
                                children: <Widget>[
                                  // ClipRRect()
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20.0, right: 15.0, bottom: 10.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6.0),
                                      child: Image.network(
                                        "https://source.unsplash.com/random/400x400",
                                        width: 65.0,
                                        height: 65.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "A List at the index $index",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Lagos Nigeria",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
