import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterchallenge2/constants.dart';
import 'package:flutterchallenge2/widgets/unseen_story_avatar/unseen_story_avatar.dart';

class PhotoPost extends StatelessWidget {
  const PhotoPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: kBorderColor))),
        child: Row(children: [
          const UnseenStoryAvatar(
            height: 45,
            width: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('overthefirecooking'),
              SizedBox(
                height: 6,
              ),
              Text('Nashville, Tennessee')
            ],
          ),
          const Spacer(),
          SvgPicture.asset('assets/options.svg')
        ]),
      ),
      Container(
        height: size.height - 105,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
                image: NetworkImage(
                    'https://picsum.photos/${size.width.toInt()}/${(size.height - 105).toInt()}'))),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/like.svg'),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset('assets/comment.svg'),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset('assets/share.svg'),
                const Spacer(),
                SvgPicture.asset('assets/save.svg')
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('1.195 likes',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 15,
            ),
            Text('View all 234 comments',
                style: TextStyle(color: Colors.grey[600])),
          ],
        ),
      ),
    ]);
  }
}
