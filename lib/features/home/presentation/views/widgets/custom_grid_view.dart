import 'package:flutter/material.dart';
import 'package:rockets/features/home/presentation/views/widgets/cutom_card.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(), // تفعيل السكروول
      shrinkWrap: true, // عدد الأعمدة
      children: List.generate(
        10,
        (index) {
          return const Card(
            child: CustomCard(),
          );
        },
      ), // يجعل الـ GridView يأخذ المساحة المطلوبة فقط
    );
  }
}
