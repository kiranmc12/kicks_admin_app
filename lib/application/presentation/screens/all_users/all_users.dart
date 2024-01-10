import 'package:flutter/material.dart';

class ScreenUsers extends StatelessWidget {
  const ScreenUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Center(
        child: Text("Users"),
      ),
    );
  }
}
