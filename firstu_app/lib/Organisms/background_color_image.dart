import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/images/1usda_building.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(const Color(0xFF07123A).withOpacity(0.8), BlendMode.srcOver),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Scaffold(
              body: Scaffold(
                body: SafeArea(
                  child: Text('Taco')
                  ),
              ),
            )
            
          ]
          ,
        ),
    );
  }
}