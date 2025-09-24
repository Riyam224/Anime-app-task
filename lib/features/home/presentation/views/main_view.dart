import 'package:clean_arch_task/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  final List<String> icons = [
    'assets/images/home.png',
    'assets/images/local.png',
    'assets/images/search.png',
    'assets/images/internet.png',
    'assets/images/setting.png',
  ];

  final List<String> labels = [
    "Home",
    "Library",
    "Search",
    "Explore",
    "Settings",
  ];

  // Example dummy pages for each tab
  final List<Widget> pages = const [
    Center(child: HomeView()),
    Center(child: Text("Library Page")),
    Center(child: Text("Search Page")),
    Center(child: Text("Explore Page")),
    Center(child: Text("Settings Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
        decoration: const BoxDecoration(color: Color(0xFFF9F8FD)),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final isSelected = _selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(
                  horizontal: isSelected ? 16 : 0,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF5436F8)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      icons[index],
                      width: 22,
                      height: 22,
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                    if (isSelected) ...[
                      const SizedBox(width: 8),
                      Text(
                        labels[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
