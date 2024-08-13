import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rockets/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 50,
            width: 100,
            child: Image.asset('assets/images/rocket-text_transparent.png')),
        const Spacer(),
        IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bars,
              color: Colors.black,
            ))
      ],
    );
  }
}
