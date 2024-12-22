import 'package:core_module/src/ui/core/themes/padding.dart';
import 'package:flutter/material.dart';

class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.kDefaultPadding),
        child: CircularProgressIndicator(),
      ),
    );
  }
}
