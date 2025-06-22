import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const BackArrowWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onTap ?? () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
