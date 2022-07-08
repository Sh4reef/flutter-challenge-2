import 'package:flutter/material.dart';
import 'package:flutterchallenge2/constants.dart';

class SeenStoryAvatar extends StatelessWidget {
  const SeenStoryAvatar({Key? key, this.height = 75, this.width = 75})
      : super(key: key);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          width: height,
          decoration:
              const BoxDecoration(color: kBorderColor, shape: BoxShape.circle),
        ),
        Container(
          height: height! - 2,
          width: height! - 2,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
        CircleAvatar(
          radius: ((height! - 10) / 2),
          backgroundColor: Colors.white,
          backgroundImage: const NetworkImage('https://picsum.photos/65'),
        )
      ],
    );
  }
}
