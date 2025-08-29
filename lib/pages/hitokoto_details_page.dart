import 'package:flutter/material.dart';
import 'package:pencil_app/components/divider.dart';
import '/components/explore_card_widgets.dart';
import '/components/backend/classes.dart';

class HitokotoDetailsPage extends StatelessWidget {
  const HitokotoDetailsPage({super.key, required this.hitokoto});

  final Hitokoto hitokoto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              // TODO: refactor widgets
              Expanded(
                child: Center(
                  child: Text(
                    hitokoto.content,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              Text('— ${hitokoto.from} —'),

              SizedBox(height: 20.0),
              MyDivider(),

              ExploreCardOperatingTab(),
            ],
          ),
        ),
      ),
    );
  }
}
