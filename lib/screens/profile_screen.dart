import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: 'Name', filled: true, fillColor: Colors.grey.shade100),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email', filled: true, fillColor: Colors.grey.shade100),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Address', filled: true, fillColor: Colors.grey.shade100),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', filled: true, fillColor: Colors.grey.shade100),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
