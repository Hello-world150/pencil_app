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

      // save button
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.send),
        onPressed: () {
          // Handle send action
        },
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // input widget
            Expanded(
              child: Form(
                child: Column(
                  children: [
                    // optional title
                    TextFormField(
                      decoration: InputDecoration(hintText: '标题（可无）'),
                      textAlign: TextAlign.center,
                    ),

                    // content
                    Expanded(
                      child: TextFormField(
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(hintText: '正文'),
                      ),
                    ),

                    // optional author or source
                    TextFormField(
                      decoration: InputDecoration(hintText: '作者/出处（可无）'),
                      textAlign: TextAlign.center,
                    ),

                    // white space in the bottom
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
