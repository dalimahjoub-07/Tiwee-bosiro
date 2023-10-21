import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Tiwee/presentation/screens/home/menu.dart';
import 'package:Tiwee/presentation/screens/home/setting.dart';

final pageControllerProvider = Provider<PageController>((ref) {
  return PageController();
});

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  final List<Widget> pages = [const Menu(), const Setting()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pageControllerProvider);
    return PageView.builder(
      itemCount: 2,
      controller: controller,
      scrollDirection: Axis.horizontal,
      physics:  const NeverScrollableScrollPhysics(),



      itemBuilder: (context, index) => pages[index],
    );
  }
}
