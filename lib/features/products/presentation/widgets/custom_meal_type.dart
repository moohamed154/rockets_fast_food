import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';

class MealTypeItem extends StatelessWidget {
  const MealTypeItem(
      {super.key,
      required this.isActive,
      required this.color,
      required this.title});

  final bool isActive;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: color,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          );
  }
}

class CustomMealType extends StatefulWidget {
  const CustomMealType({super.key});

  @override
  State<CustomMealType> createState() => _CustomMealTypeState();
}

class _CustomMealTypeState extends State<CustomMealType> {
  int currentIndex = 2;

  get colors => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: kMealType.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: MealTypeItem(
                        title: kMealType[index],
                        color: kPrimaryColor,
                        isActive: currentIndex == index,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
