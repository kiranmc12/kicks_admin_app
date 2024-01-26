import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key, required this.width, this.colors});

  final double width;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sWidth * width,
        child: LoadingIndicator(
            indicatorType: Indicator.ballPulse, colors: colors),
      ),
    );
  }
}
