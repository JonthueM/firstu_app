import 'package:flutter/material.dart';


class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/1usda_building.png'),
          fit:BoxFit.cover,
          colorFilter: ColorFilter.mode( Color.fromARGB(163, 7, 18, 58), BlendMode.srcOver),
          ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Background Image'),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          child: const TextField(
            decoration: InputDecoration(hintText: "Email"),
          ),
        ),
        )
    );
  }
}