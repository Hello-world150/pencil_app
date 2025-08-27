import 'package:flutter/material.dart';
import '/components/backend/classes.dart';

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
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      // hitokoto content
                      Expanded(
                        child: Center(
                          child: Text(
                            snapshot.data!.content,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                      // hitokoto source
                      Center(child: Text('— ${snapshot.data!.from} —')),
                    ],
                  ),
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
