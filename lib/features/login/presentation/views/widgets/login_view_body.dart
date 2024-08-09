import 'package:flutter/material.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_button.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              Image.asset(
                width: 200,
                'assets/images/rocket.png',
              ),
              const SizedBox(height: 20),
              const Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'kufi',
                ),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'البريد الإلكتروني',
                icon: Icons.email,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'كلمة المرور',
                icon: Icons.lock,
              ),
              const SizedBox(height: 20),
              const CustomTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
