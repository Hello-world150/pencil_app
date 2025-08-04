import 'package:flutter/material.dart';
import 'settings_page.dart';
import '/components/divider.dart';
import '/components/collection_gridview.dart';

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
        padding: const EdgeInsets.all(20.0),

        // this is the user information
        child: Column(
          children: [
            Row(
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
                Text(
                  "Username",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),

            // a divider to divide the user information and the content
            const MyDivider(),

            // list the user collections
            const CollectionGridview(),
          ],
        ),
      ),
    );
  }
}
