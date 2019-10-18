 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count-change-model.dart';

class NotifierWidget  extends StatelessWidget {
  
  const NotifierWidget({Key key, this.model}) : super(key: key); 
  final CountChangeModel model;

  static Widget create(BuildContext context) {
   
    return ChangeNotifierProvider<CountChangeModel>(
         
        builder: (_) => CountChangeModel(),
        child: Consumer<CountChangeModel>(
          builder: (context, model, _) =>
              NotifierWidget(model: model),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifier Widget'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${model.value}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.update(model.value + 1);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

 
  