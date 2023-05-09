import 'package:copy_nintendo_app/messages.dart';
import 'package:copy_nintendo_app/my_page.dart';
import 'package:copy_nintendo_app/mycolor.dart';
import 'package:copy_nintendo_app/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tabIndexProvider = StateProvider((ref){
  // 0 空
  // 1 空
  // 2 Mypage
  
  return 2;
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final tabIndex = ref.watch(tabIndexProvider);

    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.tv_outlined),
        label: Messages.news,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket_outlined),
        label: Messages.store,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded),
        label: Messages.myPage,
      ),
    ];

    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Mycolor.white,
      selectedItemColor: Mycolor.red,
      unselectedItemColor: Mycolor.darkGrey,
      currentIndex: tabIndex,
      onTap: (index) {
        ref.read(tabIndexProvider.notifier).state = index;
      },
      elevation:Sizes.zero,
    );
    const pages = [
      Scaffold(),
      Scaffold(),
      MyPage(),
    ];
    return ColoredBox(
      color: Mycolor.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Mycolor.lightGrey,
          body:pages[tabIndex],
          bottomNavigationBar: bar,
        ),
      ),
    );
  }
}