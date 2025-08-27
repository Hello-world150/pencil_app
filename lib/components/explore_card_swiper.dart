import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:pencil_app/components/backend/classes.dart';
import 'package:pencil_app/components/explore_card.dart';

class ExploreCardSwiper extends StatelessWidget {
  final List<Future<Hitokoto>> futureHitokotos = List.generate(100, (_) {
    return fetchHitokoto();
  });

  ExploreCardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 100,
      // enable scale for cards
      scale: 0.9,
      // disable loop
      loop: false,
      // view next and previous cards
      viewportFraction: 0.8,

      itemBuilder: (BuildContext context, int index) {
        return ExploreCard(index: index, futureHitokotos: futureHitokotos);
      },
    );
  }
}
