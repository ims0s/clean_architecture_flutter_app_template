import 'package:app_template/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class ImageProfilePlaceholder extends StatelessWidget {
  final double size;
  const ImageProfilePlaceholder({super.key, this.size = 36});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.customColors.background,
      child: Center(
        child: Icon(
          Icons.person,
          size: size,
          color: context.customColors.textSecondary,
        ),
      ),
    );
  }
}
