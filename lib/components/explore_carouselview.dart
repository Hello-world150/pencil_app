import 'package:flutter/material.dart';

class ExploreCarouselView extends StatelessWidget {
  const ExploreCarouselView({super.key});

  // the border radius for the carousel items
  final double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselView(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),

        itemSnapping: true,
        itemExtent: 600.0,
        scrollDirection: Axis.horizontal,
        enableSplash: false,

        children: List<Widget>.generate(10, (int index) {
          return Card(
            // show higher elevation
            elevation: 2.5,

            // apply ink well
            child: InkWell(
              borderRadius: BorderRadius.circular(borderRadius),

              // TODO: get item for Internet API
              onTap: () {
                // Navigate to the detail page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: Text('Item $index')),
                      body: Center(child: Text('Details for Item $index')),
                    ),
                  ),
                );
              },

              child: Center(child: Text('Item $index')),
            ),
          );
        }),
      ),
    );
  }
}
