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
        title: Text('list View and Grid view'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20,crossAxisSpacing: 20),
        itemCount: fruitnames.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
           alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(4)),
            //  
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text(fruitnames[index])),
              ),
            ),
        );
      
      }
      )

      // body: ListView.builder(
      //   itemCount: fruitnames.length,
      //   itemBuilder: (context,index){
      //   return Card(
      //      color: Colors.blue,
      //       child: Padding(
      //         padding: const EdgeInsets.all(15.0),
      //         child: Text(fruitnames[index]),
      //       ),
      //     );
      
      // }
      // )
    );
  }
}
