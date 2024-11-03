import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50), // Top padding
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Profile Picture and Name
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://example.com/profile-image.jpg', // Replace with actual image URL or AssetImage
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Philippe Troussier',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  // General Section
                  buildSectionHeader('General'),
                  buildListTile(
                    icon: Icons.person,
                    title: 'Account information',
                    subtitle: 'Change your Account information',
                  ),
                  buildListTile(
                    icon: Icons.lock,
                    title: 'Password',
                    subtitle: 'Change your Password',
                  ),

                  buildListTile(
                    icon: Icons.location_on,
                    title: 'Delivery Locations',
                    subtitle: 'Change your Delivery Locations',
                  ),
                  buildListTile(
                    icon: Icons.group_add,
                    title: 'Invite your friends',
                    subtitle: 'Get \$50 for each invitation!',
                  ),
                  SizedBox(height: 20),
                  // Notifications Section
                  buildSectionHeader('Notifications'),
                  buildSwitchTile(
                    context,
                    title: 'Notifications',
                    subtitle: 'You will receive daily updates',
                    value: true,
                  ),
                  buildSwitchTile(
                    context,
                    title: 'Promotional Notifications',
                    subtitle: 'Get notified when promotions',
                    value: false,
                  ),
                  SizedBox(height: 20),
                  // More Section
                  buildSectionHeader('More'),
                  buildListTile(
                    icon: Icons.star,
                    title: 'Rate Us',
                    subtitle: 'You will receive daily updates',
                  ),
                  buildListTile(
                    icon: Icons.help_outline,
                    title: 'FAQ',
                    subtitle: 'Frequently Asked Questions',
                  ),
                  SizedBox(height: 20),
                  // Logout
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text(
                      'Log Out',
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () {
                      // Add logout functionality here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }

  Widget buildListTile({required IconData icon, required String title, required String subtitle}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          // Add navigation functionality if needed
        },
      ),
    );
  }

  Widget buildSwitchTile(BuildContext context, {required String title, required String subtitle, required bool value}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        onChanged: (bool newValue) {
          // Add logic for handling switch changes
        },
        activeColor: Colors.blue,
      ),
    );
  }
}