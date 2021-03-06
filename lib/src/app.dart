// import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert'; //this is where json lives

import './models/image_model.dart';

// We need to refactor our StatelessWidget to a StatefullWidget
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response = await http.get('https://jsonplaceholder.typicode.com/photos/1/$counter');

    var imageModel = ImageModel.fromJson(json.decode(response.body));
    images.add(imageModel);
    print(images);
  }

  // Must definve a build method that returns the widget that *this* widget will show
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        appBar: AppBar(
          title: Text('Lets get some images'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage, // here we are making reference to the fetchImage method
        ),
      ),
    );
  }
}



// Create a class that will be our custom widget - this class must extend the StatelssWidget base class
// class App extends StatelessWidget {
//   // Must definve a build method that returns the widget that *this* widget will show

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Lets get some images'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             print('Hi there');
//           },
//         ),
//       ),
//     );
//   }
// }
