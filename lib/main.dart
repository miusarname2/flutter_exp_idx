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
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2903485389.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hola mundo',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),)
          ]
        ),
      ),
      navigationBar: CupertinoNavigationBar(
        leading: Icon(Icons.menu),
        middle: Text('Hola mundo'),
        trailing: Icon(Icons.search),
      ),
    );
  }
}
