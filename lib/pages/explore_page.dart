import 'package:flutter/material.dart';
// import 'time_corridor_page.dart';
import 'create_hitokoto_page.dart';
import '/components/explore_card_swiper.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // this is title setting
        title: Text('发现'),
        titleTextStyle: TextTheme.of(context).titleSmall,
        centerTitle: true,

        // without automatically showing the back button
        automaticallyImplyLeading: false,

        // action to show the history page
        // TODO: wait api impl time query
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.history),

        //     // navigate to the time corridor page
        //     onPressed: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(
        //           builder: (context) => const TimeCorridorPage(),
        //         ),
        //       );
        //     },
        //   ),
        // ],
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
        padding: const EdgeInsets.only(top: 85.0, bottom: 85.0),
        child: const ExploreCardSwiper(),
      ),
    );
  }
}
