import 'package:flutter/material.dart';
import '/components/backend/classes.dart';
import 'explore_card_widgets.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    super.key,
    required this.index,
    required this.futureHitokotos,
  });

  final int index;
  final List<Future<Hitokoto>> futureHitokotos;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              // TODO: divide Hitokoto details page
              builder: (context) => Scaffold(
                appBar: AppBar(title: Text('Hitokoto $index')),
                body: Center(child: Text('Details for Hitokoto $index')),
              ),
            ),
          ),
        },
        child: FutureBuilder<Hitokoto>(
          future: futureHitokotos[index],
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // widgets in card
              return Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // hitokoto title
                    ExploreCardHitokotoTitle(snapshot: snapshot),

                    // hitokoto content
                    ExploreCardHitokotoContent(snapshot: snapshot),

                    // hitokoto source
                    ExploreCardHitokotoFrom(snapshot: snapshot),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('${snapshot.error}'));
            }
            // by default, show a loading spinner
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
