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
  Icon _heart =
      Icon(Icons.favorite_border, color: Color.fromARGB(255, 130, 181, 223));
  bool _isLike = false;

  void liked() {
    setState(() {
      if (_isLike) {
        _heart = Icon(Icons.favorite_border,
            color: const Color.fromARGB(255, 130, 181, 223));
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
            onPressed: () {
              liked();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          liked();
        },
        backgroundColor: Colors.deepPurple,
        child: _heart,
        //label: Text("Like..."),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: null, icon: Icon(Icons.home)),
            IconButton(onPressed: null, icon: Icon(Icons.search)),
            IconButton(onPressed: null, icon: Icon(Icons.add)),
            IconButton(onPressed: null, icon: Icon(Icons.notifications))
          ],
        ),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
