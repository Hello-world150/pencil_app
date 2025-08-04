import 'package:flutter/material.dart';

class CollectionGridview extends StatelessWidget {
  const CollectionGridview({super.key});

  // the border radius for the gridview items
  // it is the card's border radius of the theme
  final double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        // 2 columns in the grid
        crossAxisCount: 2,
        // set the spacing between the items
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,

        // TODO: get data from API
        children: List.generate(100, (index) {
          // make a card clickable and apply inkwell
          return
          // this is the container for the collection item
          // child: Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.grey, width: 1),
          //     borderRadius: BorderRadius.circular(borderRadius),
          //   ),
          Card(
            child: InkWell(
              borderRadius: BorderRadius.circular(borderRadius),

              // when tap it, navigate to the collection page
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: Text('Collection $index')),
                      body: Center(
                        child: Text('Details for Collection $index'),
                      ),
                    ),
                  ),
                ),
              },
              child: Center(child: Text('Collection $index')),
            ),
          );
        }),
      ),
    );
  }
}
