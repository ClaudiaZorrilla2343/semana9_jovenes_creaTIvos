//import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.yellow[100], Colors.yellow[600]]),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.yellow[500], fontSize: 50.0),
              ),
              expandedHeight: 500,
              flexibleSpace: Image.network(
                'https://i.pinimg.com/originals/ab/78/6e/ab786e5beb659a69071d319489f5ea43.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[700],
      ),
      
    );
  }
}
