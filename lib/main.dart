import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: const Color(0xFFFFFFFF),
          )
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Image.asset('assets/ytlogo.png',
          width: 150.0,
          height: 99.0,),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Icon(Icons.video_call, color: Colors.black)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Icon(Icons.search,  color: Colors.black),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Icon(Icons.account_circle,  color: Colors.black)),
        ],
        backgroundColor: Colors.white,

      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset('assets/home.png'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
