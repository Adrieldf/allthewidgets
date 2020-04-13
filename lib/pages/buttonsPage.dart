import 'package:allthewidgets/cards/cardWithCodeButton.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_color/random_color.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: ListView(
        padding: EdgeInsets.all(2),
        children: <Widget>[
          CardWithCodeButton(
            widgets: <Widget>[
              FlatButton(
                child: Text("Click"),
                onPressed: () {
                  this.showTestToast();},
              )
            ],
            name: "Flat Button",
            description: "A button that is flat",
            code: "FlatButton(\n child: Text('Click'), \n onPressed:() {}\n)",
          ),
          CardWithCodeButton(
            widgets: <Widget>[
              RaisedButton(
                child: Text("Click"),
                onPressed: () {
                  this.showTestToast();},
              )
            ],
            name: "Raised Button",
            description: "A button that is raised",
            code: "RaisedButton(\n child: Text('Click'), \n onPressed:() {}\n)",
          ),
          CardWithCodeButton(
            widgets: <Widget>[
              IconButton(icon: Icon(Icons.check), onPressed: () {
                  this.showTestToast();}),
              IconButton(icon: Icon(Icons.close), onPressed: () {
                  this.showTestToast();}),
              IconButton(icon: Icon(Icons.delete), onPressed: () {
                  this.showTestToast();})
            ],
            name: "Icon Button",
            description: "A button that it is only a Icon",
            code:
                " IconButton(\n icon: Icon(Icons.check),\n onPressed: () {}\n)",
          ),
          CardWithCodeButton(
            widgets: <Widget>[
              OutlineButton(
                child: Text("Click"),
                highlightedBorderColor: Colors.teal,
                highlightColor: Colors.teal,
                onPressed: () {
                  this.showTestToast();
                },
              ),
            ],
            name: "Outline Button",
            description: "A button that has a outline",
            code:
                "OutlineButton(\nchild: Text('Click'),\nhighlightedBorderColor: Theme.of(context).accentColor,\nonPressed: () {},\n)",
          ),
        ],
      ),
    );
  }

  void showTestToast() {
    RandomColor _randomColor = RandomColor();
    Color _color = _randomColor.randomColor();
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: "It works!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: _color,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
