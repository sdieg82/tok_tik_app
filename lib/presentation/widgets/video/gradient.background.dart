import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';

class GradientBackgound extends StatelessWidget {
final List<Color> gradientColors;
final List<double> stops;

  const GradientBackgound({ 
    this.gradientColors=const [
      Colors.transparent,
      Colors.black87
    ], 
    this.stops=const [0.0,1.0]
  }):assert(gradientColors.length==stops.length, 'Stops and colors musst be the same length');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          stops: stops,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
    ));
  }
}