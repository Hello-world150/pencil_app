import 'package:flutter/material.dart';
import 'package:pencil_app/components/explore_carouselview.dart';
import 'time_corridor_page.dart';
import 'create_hitokoto_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

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

            // navigate to the time corridor page
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

      // this is the floating action button to create a new hitokoto
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create),

        // navigate to the create hitokoto page
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CreateHitokotoPage()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            // explore the online hitokotos
            ExploreCarouselView(),
          ],
        ),
      ),
    );
  }
}
