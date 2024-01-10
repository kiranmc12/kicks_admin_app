import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            style: TextStyle(color: kBlack),
            decoration: InputDecoration(
                prefixIcon: Icon(EvaIcons.search_outline),
                filled: true,
                fillColor: kGrey,
                contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none)),
          )
        ],
      ),
    ));
  }
}
