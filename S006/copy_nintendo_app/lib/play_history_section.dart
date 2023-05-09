import 'package:copy_nintendo_app/images.dart';
import 'package:copy_nintendo_app/messages.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';

class PlayHistorySection extends StatelessWidget {
  const PlayHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(Sizes.p20)),
      child: Container(
        color: Mycolor.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Images.games.path),
            Divider(
              thickness: Sizes.p1,
              height: Sizes.p5,
              color: Mycolor.lightGrey
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                Sizes.p20,//left
                Sizes.p14,//top
                Sizes.p20,//right
                Sizes.p14,//bottom
                ),
              child: Row(
                children: [
                  const Text(
                    Messages.historyOfPlay,
                    style: MyTextStyles.l,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: Sizes.p14,
                    color: Mycolor.darkGrey
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}