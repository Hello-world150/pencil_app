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
      body: Center(child: Text('Create Hitokoto Page')),
    );
  }
}
