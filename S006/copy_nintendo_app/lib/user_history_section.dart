import 'package:copy_nintendo_app/checkin_history_item.dart';
import 'package:copy_nintendo_app/gap.dart';
import 'package:copy_nintendo_app/messages.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/play_history_item.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';

class UserHistorySection extends StatelessWidget {
  const UserHistorySection({
    super.key,
    required this.exampleGameTitle,
    required this.examplePlayHistory,
    required this.exampleEventTitle,
    });

  final String exampleGameTitle;
  final String examplePlayHistory;
  final String exampleEventTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolor.white,
        borderRadius: BorderRadius.circular(Sizes.p14)
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(Sizes.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height:Sizes.p30,
                    child: Row(
                      
                      children: [
                      const Text(
                        Messages.recentHistory,
                        style: MyTextStyles.m,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.info_outline,
                        size: Sizes.p20,
                        color: Mycolor.darkGrey,
                      )
                    ]),
                  ),
                  Gap.h5,
                  const Text(
                    Messages.today,
                    style:  MyTextStyles.l,
                  ),
                  Gap.h10,
                  SizedBox(
                    height: Sizes.p20,
                    child: PlayHistoryItem(
                      gameTitle: exampleGameTitle,
                      value: examplePlayHistory,
                      ),
                  ),
                  Gap.h20,
                  SizedBox(
                    height: Sizes.p80,
                    child: CheckinHistoryitem(
                      eventTitle: exampleEventTitle
                      ),
                  )

                  
                ],
                
              ),
              
          ),
          Divider(
            thickness: Sizes.p1,
            height: Sizes.p1,
            color: Mycolor.lightGrey
          ),
          Container(
            padding: const EdgeInsets.all(
              Sizes.p14
            ),
            child: Row(
              children: [
                const Spacer(),
                const Text(
                  Messages.seeMore,
                  style: MyTextStyles.m,
                ),
                Gap.w5,
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: Sizes.p14,
                  color: Mycolor.darkGrey,
                )
              ]
              ),
          ),
          
        ]
      )  
    );
  }
}