import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:flutter/material.dart';

class ButtonHolder extends StatelessWidget {
  const ButtonHolder({
    super.key,
    required this.children,
  });

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final childrenWithDeviders = [];
    for (final child in children){
      childrenWithDeviders.add(child);
      childrenWithDeviders.add(
        VerticalDivider(
          thickness: Sizes.p1,
          width: Sizes.p1,
          indent: Sizes.p5,
          endIndent: Sizes.p5,
          color: Mycolor.darkGrey,
        )
      );
    }

    childrenWithDeviders.removeLast();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p5),
      decoration: BoxDecoration(
        color: Mycolor.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.large),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final child in childrenWithDeviders) child,
        ],
      ),
    );
  }
}