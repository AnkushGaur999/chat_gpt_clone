import 'dart:async';

import 'package:flutter/material.dart';

///
/// Stream -> Stream in flutter are like pipes. If you put a value on one end and have a listener on other end, that listener will pick it up.
/// A stream can have multiple listeners, all of which get the same value when they enter the pipeline.
/// Stream is sequence of asynchronous events. Streams are commonly used for handling data that arrives over time, such as user input, network response
/// or sensor data.
///
/// StreamController => StreamController class allows us to create and control stream. It can add events to the stream using the controller's sink,
/// and you can listen to the stream and receive those event using the stream's subscription.
///
/// StreamBuilder => StreamBuilder is a widget that helps us listen to a stream and rebuild ui whenever new data arrives.
///
///


class StreamClassDemo extends StatelessWidget {
   StreamClassDemo({Key? key}) : super(key: key);

  int counter = 0;

  final StreamController<int> _controller = StreamController();



  void increaseValue(){

    counter++;
    _controller.sink.add(counter);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>increaseValue(),
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder<int>(
            stream: _controller.stream,
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return Text(snapshot.data.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
                }else {
                  return const Text("0", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
                }
              }
          )
        ],
      ),

    );
  }
}
