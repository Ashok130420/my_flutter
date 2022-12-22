import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('BrainBox'),
              accountEmail: Text('brainbox@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'B',
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            const ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
            ),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: const Text('Notification'),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: const Text('LogOut'),
            ),
          ],
        ),
      ),
    );
  }
}
