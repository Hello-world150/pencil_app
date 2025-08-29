import 'package:flutter/material.dart';
import 'backend/classes.dart';

class ExploreCardHitokotoTitle extends StatelessWidget {
  const ExploreCardHitokotoTitle({super.key, required this.snapshot});

  final AsyncSnapshot<Hitokoto> snapshot;

  @override
  Widget build(BuildContext context) {
    final title = snapshot.data!.title;
    if (title != null) {
      return Text(title, style: Theme.of(context).textTheme.bodySmall);
    } else {
      return Container();
    }
  }
}

class ExploreCardHitokotoContent extends StatelessWidget {
  const ExploreCardHitokotoContent({super.key, required this.snapshot});

  final AsyncSnapshot<Hitokoto> snapshot;

  @override
  Widget build(BuildContext context) {
    final content = snapshot.data!.content;
    return Expanded(
      child: Center(
        child: Text(content, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}

class ExploreCardHitokotoFrom extends StatelessWidget {
  const ExploreCardHitokotoFrom({super.key, required this.snapshot});

  final AsyncSnapshot<Hitokoto> snapshot;

  @override
  Widget build(BuildContext context) {
    final from = snapshot.data!.from;
    return Text('— $from —');
  }
}

class ExploreCardOperatingTab extends StatelessWidget {
  const ExploreCardOperatingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //collect button
        IconButton(
          icon: const Icon(Icons.bookmark_border),
          onPressed: () {
            // Handle collect action
          },
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {
            // Handle favorite action
          },
        ),
      ],
    );
  }
}
