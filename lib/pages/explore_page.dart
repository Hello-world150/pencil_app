import 'package:flutter/material.dart';
import 'time_corridor_page.dart';

class HitokotoPage extends StatelessWidget {
  const HitokotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // this is title setting
        title: const Text('发现'),
        titleTextStyle: TextTheme.of(context).titleSmall,
        centerTitle: true,

        // without automatically showing the back button
        automaticallyImplyLeading: false,

        // action to show the history page
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TimeCorridorPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(child: Text('Explore Page')),
    );
  }
}
