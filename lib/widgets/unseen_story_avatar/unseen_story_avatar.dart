import 'package:flutter/material.dart';
import 'package:flutterchallenge2/constants.dart';

class UnseenStoryAvatar extends StatelessWidget {
  const UnseenStoryAvatar({Key? key, this.height = 75, this.width = 75})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          width: height,
          decoration: const BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.25, 0.3, 0.8],
                  colors: [kPurpleColor, kRedColor, kYellowColor]),
              shape: BoxShape.circle),
        ),
        Container(
          height: height - 5,
          width: height - 5,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
        CircleAvatar(
          radius: ((height - 10) / 2),
          backgroundColor: Colors.white,
          backgroundImage: const NetworkImage('https://picsum.photos/65'),
        )
      ],
    );
  }
}
