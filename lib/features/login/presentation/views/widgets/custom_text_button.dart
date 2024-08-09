import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            const Color(0xFFffb132),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'تسجيل الدخول',
          style: TextStyle(
            color: Colors.white,
            //fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
