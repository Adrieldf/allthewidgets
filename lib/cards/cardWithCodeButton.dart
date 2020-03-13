import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';

class CardWithCodeButton extends StatelessWidget {
  final Widget widget;
  final String name;
  final String description;
  final String code;

  CardWithCodeButton({this.widget, this.name, this.description, this.code});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text(this.name),
          subtitle: Text(this.description),
        ),
        this.widget,
        ButtonBar(
          children: <Widget>[
            RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Theme.of(context).primaryColorLight,
              child: Text('< Code />'),
              onPressed: () {
                this.showCode(context);
              },
            ),
          ],
        ),
      ],
    ));
  }

  Future<void> showCode(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(this.name),
          content: Container(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Text(this.code)],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Share'),
              onPressed: () {
                Share.share(this.code);
              },
            ),
            FlatButton(
              child: Text('Copy'),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: this.code));
              },
            ),
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
