import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2()
        ],
      )
    );
  }

  _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _imageBackground(),
        _texts(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top:30.0),
        child: Column(
          children: <Widget>[
            Text('11°', style: textStyle,),
            Text('Miércoles', style: textStyle,),
            Expanded(
              child: Container(),
            ),
            Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
          ],
        ),
      ),
    );
  }





  _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),)),
          onPressed: () {},
        ),
      ),
    );
  }
}