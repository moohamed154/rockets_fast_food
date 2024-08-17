import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rockets/features/products/presentation/widgets/custom_complete_order.dart';
import 'package:rockets/features/products/presentation/widgets/product_action.dart';
import 'package:rockets/features/products/presentation/widgets/product_details_section.dart';
import 'package:rockets/core/widgets/custom_drawer.dart';

class CustomProductViewBody extends StatelessWidget {
  const CustomProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const CustomDrawer(),
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 5,
          backgroundColor: Colors.white,
          leadingWidth: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                CupertinoIcons.clear_thick,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Builder(builder: (context) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Icon(
                  CupertinoIcons.bars,
                  color: Colors.black,
                  size: 30,
                ),
              );
            }),
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ProductsDetailsSection(),
                    SizedBox(
                      height: 20,
                    ),
                    ProductAction(),
                    SizedBox(
                      height: 35,
                    ),
                    CustomCompleteOrder(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
