import 'package:copy_nintendo_app/fixtures.dart';
import 'package:copy_nintendo_app/gap.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/point_section.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:copy_nintendo_app/user_history_section.dart';
import 'package:flutter/material.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: Mycolor.lightGrey,
      child: Column(
        children: const [
        //point section
        PointSection(
          silverPoints: Fixtures.slverPoints, 
          goldPoints: Fixtures.goldPoints
          ),
        Gap.h14,
        //user history section
        UserHistorySection(
          exampleEventTitle: Fixtures.exampleEventTitle,
          exampleGameTitle: Fixtures.exampleGameTitle,
          examplePlayHistory: Fixtures.examplePlayHistry,
        ),
        Gap.h14,
        //Play history section
        
        Gap.h14,
        //Check in History seciton
        ],
      ),
    );
  }
}