// import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be our custom widget - this class must extend the StatelssWidget base class
class App extends StatelessWidget{
  // Must definve a build method that returns the widget that *this* widget will show
  
  Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lets get some images'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
        print('Hi there');
      },),
    ),
  );
  }
}




