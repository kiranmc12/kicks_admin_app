import 'package:flutter/material.dart';

class ScreenAddSneakers extends StatelessWidget {
  const ScreenAddSneakers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add sneakers"),
      ),
      body: const Center(
        child: Text("add sneakers"),
      ),
    );
  }
}
