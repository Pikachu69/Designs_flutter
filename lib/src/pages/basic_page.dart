import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 12.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _image(),
            _imageTitle(),
            _actions(),
            _description(),
            _description()
          ],
        ),
      )
    );
  }

  Widget _image() {
    return FadeInImage(
      placeholder: AssetImage('assets/img/loading.gif'), 
      image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg')
    );
  }

  Widget _imageTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Berchtesgaden National Park', style: titleStyle,),
                  SizedBox(height: 7.0,),
                  Text('Berchtesgadener Land, Bavaria, Germany', style: subtitleStyle,)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red),
            Text('41', style: TextStyle(fontSize: 15.0),)
          ],
        ),
      ),
    );
  }

  Widget _actions() {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _action(Icons.call, 'Call'),
          _action(Icons.near_me, 'Route'),
          _action(Icons.share, 'Share')
        ],
      ),
    );
  }

  Widget _action(IconData icon, String iconTitle) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue,),
        Text(iconTitle, style: TextStyle(color: Colors.blue),)
      ],
    );
  }

  Widget _description() {
    final descriptionPlace = 'The park is located in the mountainous area south of the town of Berchtesgaden. The eastern, southern, and western boundaries of the park coincide with the state border between Germany and Austria. The area of the park is economically undeveloped, and there are no settlements. In the center of the park is a large lake, the Königssee, which is elongated from the south to the west and is the source of the Königsseer Ache, a right tributary of the Salzach. A smaller lake, the Obersee, is located above the Königssee and drains into it. The whole area of the park belongs to the drainage basin of the Salzach, and, consequently, of the Danube. West of the lake is the massif of Watzmann (2,713 metres (8,901 ft)), and beyond that, separated by the Wimbachtal valley, the massif of Hochkalter (2,607 metres (8,553 ft)). The Watzmann is the third highest mountain massif in Germany. The Watzmann Glacier, located below the eastern face of the Watzmann, and the Blaueis, adjacent to the Hochkalter, are two of the five[4] glaciers in Germany.';
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          descriptionPlace, 
          textAlign: TextAlign.justify,
        )
      ),
    );
  }
}