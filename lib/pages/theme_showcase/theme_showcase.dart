import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/buttons.dart';

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
        return Buttons();
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
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: _selectPage,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.smart_button_rounded),
                label: Text('Buttons'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.imagesearch_roller_outlined),
                label: Text('Color'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.description_outlined),
                label: Text('Typography'),
              ),
            ],
            selectedIndex: _selectedIndex,
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _showPage(_selectedIndex)),
        ],
      ),
    );
  }
}
