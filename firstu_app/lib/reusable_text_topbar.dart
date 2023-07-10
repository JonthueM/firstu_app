import 'package:flutter/material.dart';

class TextTopBar extends StatelessWidget {
  final String topbarText;

  TextTopBar({
    required this.topbarText
  });

  @override
  Widget build(BuildContext context) {
    return  Text(  "$topbarText".toLowerCase(), style: TextStyle(color: Colors.white),);
  }
}