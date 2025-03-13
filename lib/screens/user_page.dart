import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/user/settings'),
          child: const Text('Go to Settings'),
        ),
      ),
    );
  }
}
