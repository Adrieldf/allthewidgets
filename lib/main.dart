import 'package:allthewidgets/pages/buttonsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All the Widgets',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.blueAccent,
      ),
      home: MyHomePage(title: 'All the Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Header"),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.input),
              title: Text("Buttons"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ButtonsPage()));
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                //stuff
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item 3"),
              onTap: () {
                //stuff
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.offline_pin),
                title: Text('Buttons'),
                subtitle: Text('A lot of buttons'),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: const Text('Go'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonsPage()));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
