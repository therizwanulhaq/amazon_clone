// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        maximumSize: const Size(double.infinity, 50),
        backgroundColor: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color == null ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
