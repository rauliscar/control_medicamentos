import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        
        height: 70,
        indicatorColor: const Color.fromARGB(255, 67, 85, 133),
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.medical_information_sharp),
            label: 'Tratamientos',
          ),
          NavigationDestination(
            icon: Icon(Icons.medication),
            label: 'Medicamentos',
          ),
          NavigationDestination(
            icon: Icon(Icons.autorenew),
            label: 'Reposiciones',
          ),
        ],
      );
  }
}