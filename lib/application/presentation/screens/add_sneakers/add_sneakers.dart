import 'package:flutter/material.dart';

class ScreenAddSneakers extends StatelessWidget {
  const ScreenAddSneakers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("add sneakers"),      
      ) ,
      body: Center(
        child: Text("add sneakers"),
      ),
    );
  }
}