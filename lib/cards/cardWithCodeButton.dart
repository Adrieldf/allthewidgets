import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:share/share.dart';

class CardWithCodeButton extends StatelessWidget {
  final List<Widget> widgets;
  final String name;
  final String description;
  final String code;

  CardWithCodeButton({this.widgets, this.name, this.description, this.code});

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: this.widgets,
        ),
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
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  share(context);
                }),
            IconButton(
                icon: Icon(Icons.content_copy),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: this.code));
                }),
            IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }

  share(BuildContext context) {
    final RenderBox box = context.findRenderObject();

  /*  Share.share("",
        subject: this.code,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);*/
  }
}
