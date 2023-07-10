import 'package:flutter/material.dart';
import './reusable_text_topbar.dart';
import 'package:intl/intl.dart';

class DateTimePart extends StatelessWidget {
  const DateTimePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TimeDateLive extends StatefulWidget {
  //DateTime now = DateTime.now();

   String dayofweek = DateFormat.E().format(DateTime.now());
  String monthdate = DateFormat.MMMd().format(DateTime.now());
  String timenow = DateFormat.jm().format(DateTime.now());

  TimeDateLive({
    required this.dayofweek,
    required this.monthdate,
    required this.timenow,
  });

  @override
  State<TimeDateLive> createState() => _TimeDateLiveState();
}

class _TimeDateLiveState extends State<TimeDateLive> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        TextTopBar(topbarText: 'Time'),
      ],
    );
  }
}