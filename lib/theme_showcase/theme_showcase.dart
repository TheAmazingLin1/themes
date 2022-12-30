import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThemeShowCase extends StatefulWidget {
  const ThemeShowCase({super.key});

  @override
  State<ThemeShowCase> createState() => _ThemeShowCaseState();
}

class _ThemeShowCaseState extends State<ThemeShowCase> {
  int _selectedIndex = 0;

  void _selectPage(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  Widget _showPage(int index) {
    switch (index) {
      case 0:
        return Container();
      case 1:
        return Container();
      case 2:
        return Container();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: _selectPage,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.grid_view),
                selectedIcon: Icon(Icons.grid_view_sharp),
                label: Text('Components'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.imagesearch_roller_outlined),
                selectedIcon: Icon(Icons.imagesearch_roller),
                label: Text('Color'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.description_outlined),
                selectedIcon: Icon(Icons.description_rounded),
                label: Text('Typography'),
              ),
            ],
            selectedIndex: _selectedIndex,
          ),
          const VerticalDivider(thickness: 1, width: 1),
          _showPage(_selectedIndex),
        ],
      ),
    );
  }
}
