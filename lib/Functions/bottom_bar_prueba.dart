import 'package:control_medicamentos/widgetsPantallas/medicamentos.dart';
import 'package:control_medicamentos/widgetsPantallas/pantalla_principal.dart';
import 'package:control_medicamentos/widgetsPantallas/reposiciones.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_information_sharp),
            label: 'Tratamientos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Medicamentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.autorenew),
            label: 'Reposiciones',
          ),
        ],
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PantallaPrincipal()),
              );
              break;
            case 1:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Tratamientos()),
              // );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Medicamentos()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Reposiciones()),
              );
              break;
            default:
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaPrincipal()),
                );
              break;
          }
        }
      );
  }
}