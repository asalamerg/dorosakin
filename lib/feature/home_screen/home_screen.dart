import 'package:flutter/material.dart';
import 'package:dorosakin/feature/dashboard/view/dashboard_page.dart';
import 'package:dorosakin/feature/home/view/home.dart';
import 'package:dorosakin/feature/listen/view/listen.dart';
import 'package:dorosakin/feature/profile/view/profile_page.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';

import '../wishlist/view/WishlistPage .dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      WishlistPage(),
      listen(),
       Home(),
       DashboardPage(),
       ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppTheme.buttonColor,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.8,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          height: 1.8,
        ),
        iconSize: 26,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) => setState(() => _currentIndex = index),
        items: _buildNavBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavBarItems() {
    return [
      _buildNavBarItem(
        iconPath: "assets/image/Vector.png",
        label: "Save",
        index: 0,
      ),
      _buildNavBarItem(
        iconPath: "assets/image/listen.png",
        label: "Listen",
        index: 1,
      ),
      _buildNavBarItem(
        iconPath: "assets/image/home.png",
        label: "Home",
        index: 2,
      ),
      BottomNavigationBarItem(
        icon: _buildNavIcon(
          icon: Icons.dashboard,
          index: 3,
        ),
        label: "Dashboard",
      ),
      BottomNavigationBarItem(
        icon: _buildNavIcon(
          icon: Icons.person_outline,
          index: 4,
        ),
        label: "Profile",
      ),
    ];
  }

  BottomNavigationBarItem _buildNavBarItem({
    required String iconPath,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: _buildImageIcon(iconPath, index),
      label: label,
    );
  }

  Widget _buildImageIcon(String iconPath, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          _currentIndex == index ? AppTheme.buttonColor : Colors.grey.shade600,
          BlendMode.srcIn,
        ),
        child: Image.asset(
          iconPath,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildNavIcon({required IconData icon, required int index}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Icon(
        icon,
        size: 26,
        color: _currentIndex == index ? AppTheme.buttonColor : Colors.grey.shade600,
      ),
    );
  }
}