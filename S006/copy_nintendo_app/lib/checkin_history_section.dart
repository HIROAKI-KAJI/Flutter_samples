import 'package:copy_nintendo_app/images.dart';
import 'package:copy_nintendo_app/messages.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';


class CheckinHistorySection extends StatelessWidget {
  const CheckinHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.p20)
      ),
      child: Container(
        color: Mycolor.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Images.map.path),
            Divider(
              thickness: Sizes.p1point5,
              height: Sizes.p1point5,
              color:  Mycolor.lightGrey,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                Sizes.p20,
                Sizes.p14,
                Sizes.p20,
                Sizes.p14,
                ),
              child: Row(
                children: [
                  const Text(
                    Messages.historyOfCheckin,
                    style: MyTextStyles.m,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: Sizes.p14,
                    color: Mycolor.darkGrey,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}