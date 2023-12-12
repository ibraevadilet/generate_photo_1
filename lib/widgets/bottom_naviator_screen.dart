import 'package:ai_photo1/features/generate/generate_screen.dart';
import 'package:ai_photo1/features/home/home_screen.dart';
import 'package:ai_photo1/features/my_collections/my_collections_screen.dart';
import 'package:ai_photo1/features/profile/profile_screen.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigatorScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(0.85),
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
          selectedItemColor: AppColors.purple5B575D,
          unselectedItemColor: AppColors.textColor5B575D,
          currentIndex: index,
          onTap: (indexFrom) async {
            setState(() {
              index = indexFrom;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.generating_tokens),
              label: 'Generate',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'My collection',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> pages = [
  const HomeScreen(),
  const GenerateScreen(),
  const MyCollectionsScreen(),
  const ProfileScreen(),
];
