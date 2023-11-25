import 'package:fluttemp/Utils/colors.dart';
import 'package:fluttemp/View/Pages/HomeScreen/home.dart';
import 'package:fluttemp/View/Pages/Search%20Screen/search_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    void onTapped(int index) {
      setState(() {
        currIndex = index;
      });
    }

    return Scaffold(
      body: currIndex == 0 ? const Home() : const SearchScreen(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          onTap: onTapped,
          currentIndex: currIndex,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search))
          ]),
    );
  }
}
