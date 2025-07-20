import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String assetName;
  final double size;
  final Color? color;

  const CustomIcon({
    required this.assetName,
    this.size = 24.0,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: size,
      width: size,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
