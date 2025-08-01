import 'package:flutter/material.dart';
import 'settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        // set the padding around the page
        padding: const EdgeInsets.all(35.0),

        // this is the user information
        child: Row(
          children: [
            // this is the user avatar
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(
                'assets/profile_picture.png',
              ), // Replace with your image
            ),

            const SizedBox(width: 20),

            // this is the user name
            Text("Username", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
