import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: SafeArea(
    child: MyHelloWorldApp(),
  ),
  debugShowCheckedModeBanner: false,
  debugShowMaterialGrid: false,
  )
  );
}

class MyHelloWorldApp extends StatelessWidget {
  const MyHelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(color: Colors.blue),
          child: const Row(
            children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.menu),
                  tooltip: 'Este Boton te ayudara a navegar'),
              Expanded(child: Text('Mi Primera App en Flutter desde 0')),
              IconButton(onPressed: null, icon: Icon(Icons.search))
            ],
          ),
        ),
        const Expanded(
            child: Center(
                child: Text(
          'Hello World! mundo',
          textDirection: TextDirection.ltr,
        )))
      ],
    ));
  }
}
