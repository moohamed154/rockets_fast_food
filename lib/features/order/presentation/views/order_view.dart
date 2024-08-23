import 'package:flutter/material.dart';
import 'package:rockets/features/order/presentation/views/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderViewBody(),
    );
  }
}
