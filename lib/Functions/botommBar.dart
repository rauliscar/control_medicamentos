import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 60,
        indicatorColor: const Color.fromARGB(255, 67, 85, 133),
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications)),
            label: 'Notificaciones',
          ),
          NavigationDestination(
            icon: Icon(Icons.medication),
            label: 'Medicinas',
          ),
        ],
      );
  }
}