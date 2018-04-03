import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Yourclassname(),
  ));
}

class Yourclassname extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter card ") ,
      ),// appBar
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new myCardLayout (theIcon: Icons.fastfood,theText: "Fastfood"),
            new myCardLayout (theIcon: Icons.alarm,theText: "Alarm"),
            new myCardLayout (theIcon: Icons.atm,theText: "Atm"),
          ],
        ),// column

      ),// Container

      ); // scaffold
  }
}

class myCardLayout extends StatelessWidget
{
  // default constructor
  myCardLayout({this.theIcon,this.theText});

  // init variables
  final IconData theIcon;
  final String theText;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child:  new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              theIcon,size: 50.0,color: Colors.brown,
            ),//icon
            new Text(
              theText,style:new TextStyle
                (
              fontSize: 20.0,
            ),// text

            )// text
          ],//widget
        ),// column

      ),// card
    );// Container

    // TODO: implement build
  }

}