import 'package:flutter/material.dart';
import 'package:flutterchallenge2/constants.dart';

class YourStoryAvatar extends StatelessWidget {
  const YourStoryAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const CircleAvatar(
        radius: 65 / 2,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage('https://picsum.photos/65'),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3, color: Colors.white),
              shape: BoxShape.circle),
          child: const Icon(
            Icons.add_circle,
            color: kBlueColor,
          ),
        ),
      )
    ]);
  }
}
