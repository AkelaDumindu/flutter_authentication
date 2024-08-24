import 'package:flutter/material.dart';
import 'package:flutter_app5/pages/main_screens/create_exercise.dart';
import 'package:flutter_app5/pages/main_screens/exercise_page.dart';
import 'package:flutter_app5/pages/main_screens/home_page.dart';
import 'package:flutter_app5/pages/main_screens/mindfull_exercise_page.dart';
import 'package:flutter_app5/pages/main_screens/profile_page.dart';
import 'package:flutter_app5/utillz/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = [
    HomePage(),
    MindfulExercisePage(),
    CreateExercisePage(),
    ExercisePage(),
    ProfilePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BottomNavigationBar(
          onTap: onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/house.svg",
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 0
                        ? AppColors.primaryPurple
                        : AppColors.primaryGrey,
                    BlendMode.srcIn),
                semanticsLabel: "home svg",
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/brain.svg",
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 1
                        ? AppColors.primaryPurple
                        : AppColors.primaryGrey,
                    BlendMode.srcIn),
                semanticsLabel: "home svg",
              ),
              label: "Mindful",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/circle-plus.svg",
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 2
                        ? AppColors.primaryPurple
                        : AppColors.primaryGrey,
                    BlendMode.srcIn),
                semanticsLabel: "home svg",
              ),
              label: "create",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/square-activity.svg",
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 3
                        ? AppColors.primaryPurple
                        : AppColors.primaryGrey,
                    BlendMode.srcIn),
                semanticsLabel: "home svg",
              ),
              label: "Exercise",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/circle-user.svg",
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 4
                        ? AppColors.primaryPurple
                        : AppColors.primaryGrey,
                    BlendMode.srcIn),
                semanticsLabel: "user svg",
              ),
              label: "profile",
            ),
          ],
          selectedItemColor: AppColors.primaryPurple,
          unselectedItemColor: AppColors.primaryGrey,
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
