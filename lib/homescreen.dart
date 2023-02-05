// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List fruitnames = ['apple', 'banana', 'staberry', 'gauva'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('list view and Grid view'),
      ),
      body: ListView.builder(
        itemCount: fruitnames.length,
        itemBuilder: (context,index){
        return Card(
           color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(fruitnames[index]),
            ),
          );
      
      })
    );
  }
}
