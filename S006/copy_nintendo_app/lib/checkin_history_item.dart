import 'package:copy_nintendo_app/gap.dart';
import 'package:copy_nintendo_app/images.dart';
import 'package:copy_nintendo_app/messages.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';

class CheckinHistoryitem extends StatelessWidget {
  const CheckinHistoryitem({
    super.key,
    required this.eventTitle,
    });

  final String eventTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [

        const Text(
          Messages.checkedIn,
          style: MyTextStyles.mBold,
        ),
        Gap.h14,
        Expanded(child: Row(children: [
          Image.asset(Images.event.path),
          const Spacer(),
          const Icon(
            Icons.check_circle,
            color: Mycolor.green,
          ),
          Gap.w5,
          Text(
            eventTitle,
            style: MyTextStyles.m,
          )
        ],))
      ],
    );
  }
}