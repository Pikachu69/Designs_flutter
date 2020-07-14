import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class AdvancedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _menuButtons(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _background() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final shapeRosa = Transform.rotate(
      angle: pi/1.4,
      child: Container(
      width: 340.0,
      height: 340.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(1.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Colors.pink
            ]
          ),
          borderRadius: BorderRadius.circular(90.0)
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -50.0,
          left: -30.0,
          child: shapeRosa
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _menuButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _roundedButton(Colors.blue, Icons.border_all, 'General'),
            _roundedButton(Colors.purpleAccent, Icons.directions_bus, 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _roundedButton(Colors.pinkAccent, Icons.shop, 'Shopping'),
            _roundedButton(Colors.orange, Icons.insert_drive_file, 'Bills'),
          ]
        ),
        TableRow(
          children: [
            _roundedButton(Colors.blueAccent, Icons.movie_filter, 'Entertainment'),
            _roundedButton(Colors.green, Icons.cloud, 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _roundedButton(Colors.red, Icons.collections, 'Photos'),
            _roundedButton(Colors.teal, Icons.help_outline, 'Help'),
          ]
        )
      ],
    );
  }

  Widget _roundedButton(Color color, IconData icon, String title) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0,),
              ),
              Text(title, style: TextStyle(color: Colors.pinkAccent),)
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ), 
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Container()
          ),
        ]
      )
    );
  }
}