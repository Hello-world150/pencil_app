import 'package:flutter/material.dart';
import 'package:pencil_app/pages/hitokoto_details_page.dart';
import 'backend/classes.dart';
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
      child: FutureBuilder<Hitokoto>(
        future: futureHitokotos[index],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // widgets in card
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        HitokotoDetailsPage(hitokoto: snapshot.data!),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // hitokoto title
                    ExploreCardHitokotoTitle(snapshot: snapshot),

                    // hitokoto content
                    ExploreCardHitokotoContent(snapshot: snapshot),

                    // hitokoto from
                    ExploreCardHitokotoFrom(snapshot: snapshot),

                    SizedBox(height: 20.0),
                    // operatings of one hitokoto
                    ExploreCardOperatingTab(),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            // if has error, show error message
            return Center(child: Text('${snapshot.error}'));
          } else {
            // by default, show a loading spinner
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
