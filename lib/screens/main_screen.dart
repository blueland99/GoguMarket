import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  int _currentTab = 0;
  final List<Widget> _widgetOptions = const [
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: false,
        title: const Text('화곡동'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
        automaticallyImplyLeading: false,
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 20),
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 20),
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 30),
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_currentTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        currentIndex: _currentTab,
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: '동네생활',
            icon: Icon(
              Icons.business,
            ),
            activeIcon: Icon(
              Icons.business_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: '내 근처',
            icon: Icon(
              Icons.location_on_outlined,
            ),
            activeIcon: Icon(
              Icons.location_on,
            ),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(
              Icons.chat_bubble_outline,
            ),
            activeIcon: Icon(
              Icons.chat_bubble,
            ),
          ),
          BottomNavigationBarItem(
            label: '나의 고구마',
            icon: Icon(
              Icons.person_outline,
            ),
            activeIcon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
