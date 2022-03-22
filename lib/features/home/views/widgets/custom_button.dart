import 'package:flutter/material.dart';
import 'package:web_a/config/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onTap, required this.child})
      : super(key: key);

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: kHoverColor,
      onTap: this.onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: this.child,
      ),
    );
  }
}
