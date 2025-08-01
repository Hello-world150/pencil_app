import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
        titleTextStyle: TextTheme.of(context).titleSmall,
        centerTitle: true,
      ),
      body: Center(child: Text('SettingsPage')),
    );
  }
}
