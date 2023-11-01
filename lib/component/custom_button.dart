import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.customText});
  String customText;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(customText),
        ),
      ),
    );
  }
}
