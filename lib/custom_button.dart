import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;

  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 60,
      color: Colors.pink,
      minWidth: double.infinity,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
