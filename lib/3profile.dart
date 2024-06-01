import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 50, // Size of profile picture
              backgroundImage: NetworkImage(
                  'https://cdn.rri.co.id/berita/Gorontalo/o/1713562172085-(Cover_Artwork)_Tiara_Andini_-_Kupu_Kupu/aj65knimwpmpxgc.jpeg'), // Sample profile picture
            ),
            SizedBox(height: 20),
            Text('Your Name Here', style: TextStyle(fontSize: 20)),
            Text('your.email@example.com',
                style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
