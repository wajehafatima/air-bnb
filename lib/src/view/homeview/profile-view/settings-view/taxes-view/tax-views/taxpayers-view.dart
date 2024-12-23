import 'package:flutter/material.dart';

class TaxPayersScreen extends StatefulWidget {
  const TaxPayersScreen({super.key});

  @override
  State<TaxPayersScreen> createState() => _TaxPayersScreenState();
}

class _TaxPayersScreenState extends State<TaxPayersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tax Payers Content',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
