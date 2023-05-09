import 'package:copy_nintendo_app/gap.dart';
import 'package:copy_nintendo_app/images.dart';
import 'package:copy_nintendo_app/messages.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';

class PointSection extends StatelessWidget {
  const PointSection({
    super.key,
    required this.silverPoints,
    required this.goldPoints,
    });

  final int silverPoints;
  final int goldPoints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p14),
      decoration: BoxDecoration(
        color: Mycolor.white,
        borderRadius: BorderRadius.circular(Sizes.p14),
      ),
      child: Row(children: [
        const Text(
          Messages.points,
          style: MyTextStyles.s,
          ),
        const Spacer(),
        SizedBox(
          width: Sizes.p20,
          height:Sizes.p20,
          child: Image.asset(Images.silverCoin.path),
        ),
        Gap.w5,
        Text(
          '$silverPoints',
          style: MyTextStyles.xlBold,
        ),
        Gap.w10,
        SizedBox(
          width: Sizes.p20,
          height:Sizes.p20,
          child: Image.asset(Images.goldCoin.path),
        ),
        Gap.w5,
        Text(
          '$goldPoints',
          style: MyTextStyles.xlBold,
        ),

      ]),
    );
  }
}