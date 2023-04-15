import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Building List View'),
          centerTitle: true,
        ),
        body: const BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  const BodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    padding: const EdgeInsets.all(8.0),
    //shrinkWrap: true,
    //scrollDirection: Axis.horizontal,
    //itemExtent: 300,
    //reverse: true,
    children: const [
      ListTile(
        title: Text('Sun'),
        subtitle: Text('Today is clear'),
        leading: Icon(
          Icons.wb_sunny,
          color: Colors.yellow,
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Cloudy'),
        subtitle: Text('Today is cloudy'),
        leading: Icon(
          Icons.wb_cloudy,
          color: Colors.blue,
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Snow'),
        subtitle: Text('Today is snow'),
        leading: Icon(
          Icons.cloudy_snowing,
          color: Colors.blue,
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}
