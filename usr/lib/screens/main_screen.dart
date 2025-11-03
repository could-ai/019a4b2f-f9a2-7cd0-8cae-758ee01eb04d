import 'package:couldai_user_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('الرئيسية')),
    Center(child: Text('استثمر')),
    Center(child: Text('دردش')),
    Center(child: Text('حسابي')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.2),
          title: Row(
            children: const [
              FaIcon(FontAwesomeIcons.gem, color: AppColors.accent),
              SizedBox(width: 10),
              Text("جوهرتي", style: TextStyle(fontWeight: FontWeight.w700)),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Chip(
                backgroundColor: Colors.white.withOpacity(0.2),
                avatar: const FaIcon(FontAwesomeIcons.gem, color: Colors.white, size: 16),
                label: const Text("1,250", style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: CircleAvatar(
                backgroundColor: AppColors.accent,
                child: const Text("م", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.chartLine),
              label: 'استثمر',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.comments),
              label: 'دردش',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'حسابي',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black.withOpacity(0.2),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.7),
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
