import 'package:copy_nintendo_app/button_holder.dart';
import 'package:copy_nintendo_app/fixtures.dart';
import 'package:copy_nintendo_app/gap.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:copy_nintendo_app/text_style.dart';
import 'package:flutter/material.dart';


class MyPageHeader extends StatelessWidget {
  const MyPageHeader({
    super.key,
    required this.onPressedSettingButton,
    required this.onPressedQrButton,
    });

  final void Function() onPressedSettingButton;
  final void Function() onPressedQrButton;

  @override
  Widget build(BuildContext context) {
    final settingButton = IconButton(
      onPressed: onPressedSettingButton,
       icon: const Icon(Icons.settings)
      );
    final userIcon = ClipOval(
      child: Image.asset(Fixtures.userIconUri)
    );
    const userNameText = Text(
      Fixtures.userName,
      textAlign: TextAlign.center,
      style: MyTextStyles.xlBold,);
    
    final userDeatilButtonHolder = ButtonHolder(
      children:[
        IconButton(
          onPressed: onPressedQrButton,
          icon: const Icon(
            Icons.qr_code_rounded,
            size: Sizes.p18,
          ),
        ),
        IconButton(
          onPressed: onPressedSettingButton,
          icon: const Icon(
            Icons.location_on_outlined,
            size: Sizes.p18,
          ),
        ),
      ]
    );

    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: Mycolor.white,
      child: Column(children: [
        Row(children: [
          const Spacer(),
          settingButton,
        ],),
        SizedBox(
          height: Sizes.p80,
          child: Row(children: [
            userIcon,
            Gap.w10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: userNameText,
                      ),
                    ),
                  SizedBox(
                    height: Sizes.p30,
                    child: userDeatilButtonHolder,
                  ),
                ],
              ),
            ),
          ]),
        )
      ],),
    );
  }
}
