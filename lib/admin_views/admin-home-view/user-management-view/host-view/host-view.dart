import 'package:flutter/material.dart';

class Hostview extends StatelessWidget {
  const Hostview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10, // Replace with dynamic data count
      itemBuilder: (context, index) {
        return _hostCard(index);
      },
    );
  }

  Widget _hostCard(int id) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text("Host ID: $id"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: Host Name $id"),
            Text("Listing Name: Listing $id"),
            Text("Address: 123 Host Street, City"),
            Text("Phone: +1 123-456-7890"),
            Text("Tax ID: 123456789"),
            Text("Verification: Verified"),
            Text("Incomplete Profiles: No"),
            Text("Total Listings: 5"),
            Text("Bookings: 12"),
            Text("Earnings: \$5000"),
          ],
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
