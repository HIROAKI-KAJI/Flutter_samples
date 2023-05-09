import 'package:copy_nintendo_app/gap.dart';
import 'package:copy_nintendo_app/images.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';


class PlayHistoryItem extends StatelessWidget {
  const PlayHistoryItem({
    super.key,
    required this.gameTitle,
    required this.value,
    });

  final String gameTitle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Images.animalCrossing.path),
        Gap.w10,
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              gameTitle,
              style: MyTextStyles.sGrey,
            ),
            const Spacer(),
            Text(
              value,
              textAlign: TextAlign.right,
              style: MyTextStyles.m,
            )
          ],
        ))
      ],
    );
  }
}