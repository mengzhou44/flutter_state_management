import 'package:flutter/material.dart';
import 'package:state_management_app/widget-notifier.dart';
import 'package:state_management_app/widget-state.dart';
import 'package:state_management_app/widget-stream.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'State Management App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(title: 'Statement Management'),
          '/state': (context) => StateWidget(),
          '/notifier': (context) => NotifierWidget.create(context),
          '/stream': (context) => StreamWidget()
        });
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), elevation: 2.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              child: RaisedButton(
                child: Text('State Widget'),
                onPressed: () {
                  Navigator.pushNamed(context, '/state');
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: RaisedButton(
                child: Text('Notifier Widget'),
                onPressed: () {
                   Navigator.pushNamed(context, '/notifier');
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: RaisedButton(
                child: Text('Stream Widget'),
                onPressed: () {
                     Navigator.pushNamed(context, '/stream');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
