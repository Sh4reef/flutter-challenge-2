import 'package:flutter/material.dart';
import 'package:flutterchallenge2/widgets/seen_story_avatar/seen_story_avatar.dart';
import 'package:flutterchallenge2/widgets/unseen_story_avatar/unseen_story_avatar.dart';
import 'package:flutterchallenge2/widgets/your_story_avatar/your_story_avatar.dart';

class StoriesTopBar extends StatelessWidget {
  const StoriesTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              YourStoryAvatar(),
              Spacer(),
              Text('Your story',
                  style:
                      TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
            ],
          )),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              UnseenStoryAvatar(),
              Spacer(),
              Text('User 1',
                  style:
                      TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
            ],
          )),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              UnseenStoryAvatar(),
              Spacer(),
              Text('User 1',
                  style:
                      TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
            ],
          )),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              UnseenStoryAvatar(),
              Spacer(),
              Text('User 1',
                  style:
                      TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
            ],
          )),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              UnseenStoryAvatar(),
              Spacer(),
              Text('User 1',
                  style:
                      TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
            ],
          )),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SeenStoryAvatar(),
            Spacer(),
            Text('User 2',
                style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SeenStoryAvatar(),
            Spacer(),
            Text('User 2',
                style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SeenStoryAvatar(),
            Spacer(),
            Text('User 2',
                style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SeenStoryAvatar(),
            Spacer(),
            Text('User 2',
                style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
    ]);
  }
}
