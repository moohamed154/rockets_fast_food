import 'package:flutter/material.dart';
import 'package:rockets/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:rockets/features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:rockets/features/home/presentation/views/widgets/slider_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 20, right: 20),
                      child: CustomAppBar(),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    SizedBox(height: 10),
                    SliderListView(),
                    SizedBox(height: 20),
                    SizedBox(
                        child: CustomGridView()), // Removed SizedBox wrapping
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
