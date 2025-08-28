import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:pencil_app/components/backend/classes.dart';
import 'package:pencil_app/components/explore_card.dart';

class ExploreCardSwiper extends StatefulWidget {
  const ExploreCardSwiper({super.key});

  @override
  State<ExploreCardSwiper> createState() => _ExploreCardSwiperState();
}

class _ExploreCardSwiperState extends State<ExploreCardSwiper> {
  List<Future<Hitokoto>> futureHitokotos = [];
  final int initialLoadCount = 20; // initial load count
  final int loadMoreCount = 10; // load more count on each load
  final int preloadThreshold = 5; // when remaining cards are less than this

  @override
  void initState() {
    super.initState();
    _loadInitialHitokotos();
  }

  void _loadInitialHitokotos() {
    futureHitokotos = List.generate(initialLoadCount, (_) => fetchHitokoto());
  }

  void _loadMoreHitokotos() {
    setState(() {
      futureHitokotos.addAll(
        List.generate(loadMoreCount, (_) => fetchHitokoto()),
      );
    });
  }

  void _onIndexChanged(int index) {
    // when remaining cards are less than this
    if (index >= futureHitokotos.length - preloadThreshold) {
      _loadMoreHitokotos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: futureHitokotos.length,
      // enable scale for cards
      scale: 0.9,
      // disable loop
      loop: false,
      // view next and previous cards
      viewportFraction: 0.8,
      // trigger loading more cards when swiping
      onIndexChanged: _onIndexChanged,

      itemBuilder: (BuildContext context, int index) {
        return ExploreCard(index: index, futureHitokotos: futureHitokotos);
      },
    );
  }
}
