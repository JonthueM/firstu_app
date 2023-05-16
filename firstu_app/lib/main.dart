import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/1usda_building.png'),
          fit:BoxFit.cover,
          ),
      ),
      child:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(163, 7, 18, 58),
              Color.fromARGB(163, 7, 18, 58),
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Another One'),
            centerTitle: true,
          ),
          body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            child: const TextField(
              decoration: InputDecoration(hintText: "Email"),
          ),
          ),
        ),
      )
    );
}