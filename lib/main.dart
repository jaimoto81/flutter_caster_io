import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key,this.title}): super(key:key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.plus_one ),
            tooltip: "Increment",
            onPressed: () {
              incrementCounter();
              print(_counter);
            },
          ),
          SizedBox(width: 20,),
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            tooltip: "Decrement",
            onPressed: () {
              decrementCounter();
              print(_counter);
            },
          ),
        ],
      ),


      appBar: AppBar(
        title: Text("Flutter demo app"),
        leading: Icon(Icons.burst_mode),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have pushed this buttone these many times",
            ),
            Text(
              "$_counter ",
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ],
        ),
      ),
    );
  }
}
