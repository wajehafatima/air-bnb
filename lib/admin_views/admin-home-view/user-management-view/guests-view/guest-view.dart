import 'package:flutter/material.dart';

class Guestview extends StatelessWidget {
  const Guestview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10, // Replace with dynamic data count
      itemBuilder: (context, index) {
        return _guestCard(index);
      },
    );
  }

  Widget _guestCard(int id) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text("Guest ID: $id"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: Guest Name $id"),
            Text("Address: 123 Street, City"),
            Text("Phone: +1 123-456-7890"),
            Text("Verified: Yes"),
            Text("Profile: Incomplete"),
          ],
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
