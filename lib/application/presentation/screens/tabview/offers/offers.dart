import 'package:flutter/material.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offers"),
      ),
      body: Center(
        child: Text("offers"),
      ),
    );
  }
}
