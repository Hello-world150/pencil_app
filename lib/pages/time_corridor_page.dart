import 'package:flutter/material.dart';

class TimeCorridorPage extends StatelessWidget {
  const TimeCorridorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('时光走廊'),
        titleTextStyle: Theme.of(context).textTheme.titleSmall,
        centerTitle: true,
      ),
      body: Center(child: Text(' Time Corridor Page')),
    );
  }
}
