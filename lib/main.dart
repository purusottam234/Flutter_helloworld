import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world we are here',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello world title'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(builder:(context)=> SingleChildScrollView(
          //SingleChildScrollView is widget that scrolls and has a single child.
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'hello world page',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'This is the second text',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                        height: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(child: Text('Contact Us'),
                        onPressed: () => contactUs(context),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ),
        ),
      ),
      //Scaffold widget has two properties that we have used are appbar and body
    );
  }


  void contactUs(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Contact us'),
            content: Text('main us at helloworld@edu.np'),
            actions: <Widget>[
              TextButton(
                child: Text('close'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
