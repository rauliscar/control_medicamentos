import 'package:control_medicamentos/widgetsPantallas/medicamentos.dart';
import 'package:control_medicamentos/widgetsPantallas/pantalla_principal.dart';
import 'package:control_medicamentos/widgetsPantallas/reposiciones.dart';
import 'package:flutter/material.dart';

class BottomBarPrueba extends StatelessWidget {
  int _activo=0;
  BottomBarPrueba(int itemActivo)
  {
    _activo=itemActivo;
  }

  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex:_activo,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(
          color: Colors.green
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black
        ),
        items: const[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              ),
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

          // setState(() {
          //   _selectedIndex = index;
          // });

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

