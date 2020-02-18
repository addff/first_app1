import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Lab 3'),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/view.jpg'),
                  ),
                ],
              ),
              Container(
//                margin: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
//                        Text('kkk'),
                        Expanded(
                          child: ListTile(
                            title: Text('Two-line ListTile'),
                            subtitle: Text('Here is a second line'),
                          ),
                        ),
                        Icon(Icons.star, color: Colors.deepOrangeAccent),
                        Text("41")
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.call, color: Colors.lightBlue),
                              Container(
                                  child: Text('CALL',
                                      style:
                                          TextStyle(color: Colors.lightBlue))),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.navigation, color: Colors.lightBlue),
                              Container(
                                  child: Text('ROUTE',
                                      style:
                                          TextStyle(color: Colors.lightBlue))),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.share, color: Colors.lightBlue),
                              Container(
                                  child: Text('SHARE',
                                      style:
                                          TextStyle(color: Colors.lightBlue))),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                                  'asdasdsadsadsadsadddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
