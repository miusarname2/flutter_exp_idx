import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScaffoldApp",
      home: MyHomePage(title: "ScaffoldApp"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _heart = Icon(Icons.favorite_border, color: Colors.blue);
  bool _isLike = false;

   void liked() {
      setState(() {
        if (_isLike) {
          _heart = Icon(Icons.favorite_border, color: Colors.blueAccent);
          _isLike = !_isLike;
        } else {
          _heart = Icon(Icons.favorite, color: Colors.red);
          _isLike = !_isLike;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        actions: [
          IconButton(
            icon: _heart,
            onPressed: (){liked();},
          ),
        ],
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
