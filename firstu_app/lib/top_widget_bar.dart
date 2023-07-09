import 'package:flutter/material.dart';

class TopWidgetBar extends StatelessWidget {
  const TopWidgetBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Bar(),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded( //This gives the container a max width
          child:Container(
          padding: const EdgeInsets.all(3),
          height: 25,
  
          decoration: BoxDecoration(
            boxShadow: [
             BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
             ],
            color: Color.fromARGB(212, 6, 2, 86),
            borderRadius: BorderRadius.all(Radius.circular(7))
          ),
          
        ),
          )
      ],
    );
  }
}

