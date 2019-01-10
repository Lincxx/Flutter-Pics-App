// I need to import a helper library from flutter
import 'package:flutter/material.dart';

// Define a 'main' function to run when our app starts
void main() {
  // Create a new text widget to show some text on the screen
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lets get some images'),
      ),
    ),
  );

  // take that widget and get it on the screen
  runApp(app);
}
