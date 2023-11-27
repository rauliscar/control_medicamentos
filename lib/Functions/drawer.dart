import 'package:control_medicamentos/widgetsPantallas/medicamentos.dart';
import 'package:control_medicamentos/widgetsPantallas/pantalla_principal.dart';
import 'package:control_medicamentos/widgetsPantallas/reposiciones.dart';
import 'package:flutter/material.dart';

class ClassDrawer extends StatefulWidget {
  const ClassDrawer({super.key});

  @override
  State<ClassDrawer> createState() => _ClassDrawerState();
}

class _ClassDrawerState extends State<ClassDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            //Cabecera drawer
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color:   Color.fromARGB(255, 67, 85, 133)
                ),
                child: Column(
                  children: [
                    //Titulo drawer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(  
                          margin: const EdgeInsets.only(right: 10),
                          child: const Text(
                            'Controla-Med',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        ),

                        Container(  
                          margin: const EdgeInsets.only(),
                          child: const Text(
                            '|',
                            style: TextStyle(
                              color: Colors.white
                            ),)
                        ),

                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Raúl Pérez',
                            style: TextStyle(
                              color: Colors.white
                            ),)
                        ),
                      ],
                    ),

                    //Foto de perfil
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 14.0),
                          width: 50,
                          height: 50,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage("https://imgs.search.brave.com/oyyAZQfuM6BQrnzcGfdVaJP3vgCrH5kZp48JOYY9Zd4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/dmVjdG9yLWdyYXRp/cy9hdmF0YXItcGVy/c29uYWplLWVtcHJl/c2FyaW8tYWlzbGFk/b18yNDg3Ny02MDEx/MS5qcGc_c2l6ZT02/MjYmZXh0PWpwZw"),
                          )
                          
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),

            ListTile(
              title: const Text('Inicio'),
              leading: const Icon(Icons.home_filled),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaPrincipal()
                  )
                );
              },
            ),

            ListTile(
              title: const Text('Perfil'),
              leading: const Icon(Icons.account_box),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: const Text('Personas'),
              leading: const Icon(Icons.person_add),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Tratamientos'),
              leading: const Icon(Icons.medical_information_sharp),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Medicamentos'),
              leading: const Icon(Icons.medication),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Medicamentos()
                  )
                );
              },
            ),

            ListTile(
              title: const Text('Reposiciones'),
              leading: const Icon(Icons.autorenew),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Reposiciones()
                  )
                );
              },
            ),

            ListTile(
              title: const Text('Notificaciones'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Ajustes'),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}