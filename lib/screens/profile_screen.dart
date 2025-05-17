import 'package:flutter/material.dart';
import 'dart:math';

class TeamMember {
  final String name;
  final String role;
  final String imageUrl;
  final String email;

  TeamMember({
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.email,
  });
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TeamMember> teamMembers = [
      // Ahmed Abdelgwad Mahmoud
      // 202201478
      // Mohamed Ibrahim Elsafty
      // 202202844
      // Ahmed Fawzy yahya
      // 202201724
      // Maram Mohamed Maher
      // 202200654
      // Clara Samir fakeh
      // 202200871
      TeamMember(
        name: 'Ahmed Abdelgwad Mahmoud ',
        role: '202201478',
        imageUrl: 'https://picsum.photos/id/1018/600/400',
        email: 'john.doe@example.com',
      ),
      TeamMember(
        name: 'Mohamed Ibrahim Elsafty ',
        role: '202202844',
        imageUrl: 'https://picsum.photos/id/1025/600/400',
        email: 'jane.smith@example.com',
      ),
      TeamMember(
        name: 'Ahmed Fawzy yahya',
        role: '202201724',
        imageUrl: 'https://picsum.photos/id/1056/600/400',
        email: 'mike.johnson@example.com',
      ),
      TeamMember(
        name: 'Maram Mohamed Maher',
        role: '202200654',
        imageUrl: 'https://picsum.photos/id/1010/600/400',
        email: 'mike.johnson@example.com',
      ),
      TeamMember(
        name: 'Clara Samir fakeh',
        role: '202200871',
        imageUrl: 'https://picsum.photos/id/1039/600/400',
        email: 'mike.johnson@example.com',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile & Team'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Team Members',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: teamMembers.length,
              itemBuilder: (context, index) {
                final member = teamMembers[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(member.imageUrl),
                      onBackgroundImageError: (_, __) {},
                    ),
                    title: Text(member.name),
                    subtitle: Text(member.role),
                    trailing: IconButton(
                      icon: const Icon(Icons.email),
                      onPressed: () {
                        // Handle email action
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
