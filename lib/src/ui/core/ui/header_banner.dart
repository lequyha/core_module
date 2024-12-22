import 'package:core_module/src/config/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBanner extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final double height;
  const HeaderBanner({
    super.key,
    this.borderRadius = BorderRadius.zero,
    this.height = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: SvgPicture.asset(
        Assets.kHeader,
        height: height,
        fit: BoxFit.fill,
        colorFilter: const ColorFilter.mode(
          Color(0xFF354DA1),
          BlendMode.color,
        ),
      ),
    );
  }
}
