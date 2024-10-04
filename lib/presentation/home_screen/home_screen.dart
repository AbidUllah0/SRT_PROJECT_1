import 'package:flutter/material.dart';
import 'package:list_grid_ui/presentation/grid_view/grid_view_screen.dart';
import 'package:list_grid_ui/presentation/list_view/list_view_screen.dart';
import 'package:list_grid_ui/widgets/custom_text.dart';

import '../../models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List screens = [
    const ListViewScreen(),
    const GridViewScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: CustomText(
          text: currentIndex == 0 ? 'List View Data' : 'Grid View Data',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'List View Data',
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: 'Grid View Data',
            icon: Icon(Icons.grid_3x3),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
