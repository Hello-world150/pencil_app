import 'package:flutter/material.dart';

class CollectionGridview extends StatelessWidget {
  const CollectionGridview({super.key});

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
          return Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
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
