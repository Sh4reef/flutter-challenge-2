import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterchallenge2/constants.dart';
import 'package:flutterchallenge2/widgets/photo_post/photo_post.dart';
import 'package:flutterchallenge2/widgets/stories_top_bar/stories_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          backgroundColor: Colors.white,
          titleSpacing: 16,
          elevation: 0,
          title: Row(
            children: [
              SvgPicture.asset(
                'assets/instagram-typography.svg',
              ),
              const SizedBox(
                width: 6,
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              )
            ],
          ),
          actions: [
            SvgPicture.asset('assets/add.svg'),
            const SizedBox(
              width: 25,
            ),
            SvgPicture.asset('assets/like.svg'),
            const SizedBox(
              width: 25,
            ),
            SvgPicture.asset('assets/messenger.svg'),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        SliverToBoxAdapter(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 105,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: kBorderColor, width: 0.25))),
              child: const StoriesTopBar(),
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
            const PhotoPost(),
            const SizedBox(
              height: 25,
            ),
          ]),
        ),
      ]),
      bottomNavigationBar: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(color: kBorderColor, width: 0.25))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/home.svg',
                  color: Colors.black,
                ),
                const Icon(Icons.search),
                SvgPicture.asset(
                  'assets/video.svg',
                  height: 25,
                ),
                SvgPicture.asset(
                  'assets/bag.svg',
                  height: 25,
                ),
                const Icon(Icons.person_outline)
              ],
            )),
      ),
    );
  }
}
