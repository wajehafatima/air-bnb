// Separate StatefulWidget for Offers & Updates Tab
import 'package:flutter/material.dart';

class OffersAndUpdatesScreen extends StatefulWidget {
  const OffersAndUpdatesScreen({super.key});

  @override
  State<OffersAndUpdatesScreen> createState() => _OffersAndUpdatesScreenState();
}

class _OffersAndUpdatesScreenState extends State<OffersAndUpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Offers and Updates Content',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
