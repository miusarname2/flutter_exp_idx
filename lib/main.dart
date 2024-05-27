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
  int _selectedIndex = 0;
  String textToVizualize = 'index0';

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

  void pullsedItem(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          textToVizualize = 'index0';
          break;
        case 1:
          textToVizualize = 'index1';
          break;
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
      drawer: Drawer(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4120865583.
        child: Column(
          children: [
            DrawerHeader(child: Text("Menu Drawer",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),)),
            ListTile(
              title: Text("Item 1"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {},
            ),
          ]
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          liked();
        },
        backgroundColor: Colors.deepPurple,
        icon: _heart,
        label: Text("Like..."),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          pullsedItem(index);
        },
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              textToVizualize,
              style: TextStyle(fontSize: 20),
            ),
          ],
        )
      ),
    );
  }
}
