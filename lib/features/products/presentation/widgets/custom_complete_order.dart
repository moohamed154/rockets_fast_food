import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/core/utils/app_router.dart';
import 'package:rockets/core/widgets/custom_botton.dart';
import 'package:rockets/features/products/presentation/widgets/counter_widget.dart';

class CustomCompleteOrder extends StatelessWidget {
  const CustomCompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'جنيه ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //   color: kPrimaryColor,
              ),
            ),
            Text(
              '100',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //   color: kPrimaryColor,
              ),
            ),
            Text(
              ' : السعر',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //   color: kPrimaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CounterWidget(),
            SizedBox(
              width: 150,
              child: CustomButton(
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.kBuyView,
                  );
                },
                text: 'اكمل الطلب',
                backgroundColor: kPrimaryColor,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
