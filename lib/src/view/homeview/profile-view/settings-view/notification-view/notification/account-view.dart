// Separate StatefulWidget for Account Tab
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Account Content',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
