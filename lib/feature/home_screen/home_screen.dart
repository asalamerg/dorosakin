import 'package:dorosakin/feature/dashboard/view/dashboard_page.dart';
import 'package:dorosakin/feature/home/view/home.dart';
import 'package:dorosakin/feature/listen/view/listen.dart';
import 'package:dorosakin/feature/profile/view/profile_page.dart';
import 'package:dorosakin/feature/save/view/Save.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    Save(),
    listen(),
    Home(),
    DashboardPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppTheme.buttonColor, // Make sure this color is defined properly
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          iconSize: 28,
          elevation: 0,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? AppTheme.buttonColor : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset("assets/image/Vector.png", width: 24, height: 24),
              ),
              label: 'Save',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 1 ? AppTheme.buttonColor : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset("assets/image/listen.png", width: 24, height: 24),
              ),
              label: 'listen',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 2 ? AppTheme.buttonColor : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset("assets/image/home.png", width: 24, height: 24),
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard,
                  color: _currentIndex == 3 ? AppTheme.buttonColor : Colors.grey),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,
                  color: _currentIndex == 4 ? AppTheme.buttonColor : Colors.grey),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}