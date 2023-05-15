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
        icon: Icon(Icons.person),
        label: "MyData",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.analytics_outlined),
        label: "Annals",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.workspace_premium_rounded),
        label: "Competition",
      ),
    ];

    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      currentIndex: tabIndex,
      onTap: (index) {
        ref.read(tabIndexProvider.notifier).state = index;
      },
      elevation:0,
    );
    const pages = [
      Scaffold(),
      Scaffold(),
      Scaffold(),
    ];
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:pages[tabIndex],
          bottomNavigationBar: bar,
        ),
      ),
    );
  }
}