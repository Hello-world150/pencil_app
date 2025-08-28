import 'package:flutter/material.dart';
import 'backend/classes.dart';

class ExploreCardHitokotoTitle extends StatelessWidget {
  const ExploreCardHitokotoTitle({super.key, required this.snapshot});

  final AsyncSnapshot<Hitokoto> snapshot;

  @override
  Widget build(BuildContext context) {
    final title = snapshot.data!.title;
    if (title != null) {
      return Center(
        child: Text(title, style: Theme.of(context).textTheme.bodySmall),
      );
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
        child: Text(content, style: Theme.of(context).textTheme.titleMedium),
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
    return Center(child: Text('— $from —'));
  }
}
