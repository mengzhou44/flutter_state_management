import 'package:flutter/material.dart';

import 'count-bloc.dart';
 
class StreamWidget extends StatelessWidget {
  final CountBloc bloc = CountBloc(count:0);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Stream Widget'),
        ),
        body: StreamBuilder<int>(
            stream: bloc.countStream,
            builder: (context, snapshot) {
              return _buildContent(context, snapshot.data);
            }),
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bloc.addCount();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
    );
  }

   Widget _buildContent(context, count) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$count',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      ),
    );
  }

}

 
 
