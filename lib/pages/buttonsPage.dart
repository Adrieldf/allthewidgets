import 'package:allthewidgets/cards/cardWithCodeButton.dart';
import 'package:flutter/material.dart';

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
                onPressed: () {},
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
                onPressed: () {},
              )
            ],
            name: "Raised Button",
            description: "A button that is raised",
            code: "RaisedButton(\n child: Text('Click'), \n onPressed:() {}\n)",
          ),
          CardWithCodeButton(
            widgets: <Widget>[
              IconButton(icon: Icon(Icons.check), onPressed: () {}),
              IconButton(icon: Icon(Icons.close), onPressed: () {}),
              IconButton(icon: Icon(Icons.delete), onPressed: () {})
            ],
            name: "Icon Button",
            description: "A button that it is only a Icon",
            code:
                " IconButton(\n icon: Icon(Icons.check),\n onPressed: () {}\n)",
          )
        ],
      ),
    );
  }
}
