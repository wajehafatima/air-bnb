import 'package:flutter/material.dart';
class Addidview extends StatefulWidget {
  const Addidview({super.key});

  @override
  State<Addidview> createState() => _AddidviewState();
}

class _AddidviewState extends State<Addidview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: appColors.whiteBG,
      ),
      ),
    );
  }
}
