import 'package:flutter/material.dart';

class CreateHitokotoPage extends StatelessWidget {
  const CreateHitokotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新建'),
        titleTextStyle: Theme.of(context).textTheme.titleSmall,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // show optional image, from user's choice

            // input widget
            Form(
              child: Column(
                children: [
                  // optional title
                  TextFormField(decoration: InputDecoration(hintText: '标题')),

                  // content
                  TextFormField(
                    maxLines: 10,
                    decoration: InputDecoration(hintText: '正文'),
                  ),

                  // optional author or source
                  TextFormField(decoration: InputDecoration(hintText: '作者/出处')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
