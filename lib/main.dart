import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(tabBar: CupertinoTabBar(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1001647877.
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search"
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3584355990.
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile"
        )
      ]
    ), tabBuilder: (context, index){
      switch(index){
        case 0:
          return CupertinoTabView(
            builder: (context) => CupertinoPageScaffold(
              child: Center(
                child: Text("Home"),
              ),
            ),
          );
        case 1 :
          return CupertinoTabView(
            builder: (context) => CupertinoPageScaffold(
              child: Center(
                child: Text("Search"),
              ),
            ),
          );
        case 2 :
          return CupertinoTabView(
            builder: (context) => CupertinoPageScaffold(
              child: Center(
                child: Text("Profile"),
              ),
            ),
          );
        default:
          return CupertinoTabView(
            builder: (context) => CupertinoPageScaffold(
              child: Center(
                child: Text("Home"),
              ),
            ),
          );
    }});
  }
}
