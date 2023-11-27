import 'package:control_medicamentos/Functions/bottom_bar.dart';
import 'package:control_medicamentos/widgetsPantallas/medicamentos_amoxicilina.dart';
import 'package:control_medicamentos/widgetsPantallas/nuevo_medicamento.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../Functions/appbar.dart';
import '../Functions/drawer.dart';

int unidadesAmoxicilina = 6;

class Medicamentos extends StatelessWidget {
  const Medicamentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 85, 133),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NuevoMedicamento()),
          );
        },
        label: const Text(
          'Añadir',
          style: TextStyle(
            color: Colors.black
          ),
          ),
        icon: const Icon(
          Icons.add,
          color: Colors.black,),
        elevation: 20,
        backgroundColor: const Color.fromARGB( 255,129, 143, 180),
        hoverElevation: 10.0,
      ),

      // APPBAR
      appBar: const ClassAppBar(titleText: "Medicamentos"),

      // Drawer
      drawer: const ClassDrawer(),

      // BottomNavigationBar
      bottomNavigationBar: const BottomBar(),

      // Body
      body: Column(
        children: [
          Expanded(
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.black),
              child: ListView(
                padding: const EdgeInsets.all(15.0),
                children: [
                  // MEDICAMENTO 1
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MedicamentoAmoxilicina()
                      )
                    );
                    },
                    child: Container(
                      height: 120,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 203, 159),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black),
                      ),
                      // Estructura del cuadro
                      child: Row(
                        children: [
                          // Contenedor de la imagen
                          Container(
                            width: 100,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                "https://botplusweb.farmaceuticos.com/Documentos/AEMPS/Fotos/200439/full/66252_materialas.jpg",
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              // Nombre del medicamento
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  "Amoxicilina",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              // Alias o motivo con el que lo conoce el usuario
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  "Antibiótico",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // Cantidad restante
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Unidades restantes: ${unidadesAmoxicilina.toString()}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), // Medicamento 1

                  // MEDICAMENTO 2
                  InkWell(
                    onTap: () {
                      // Acción que quieres realizar cuando se toque el contenedor
                      print('Medicamento 2 presionado');
                    },
                    child: Container(
                      height: 120,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 203, 159),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black),
                      ),
                      // Estructura del cuadro
                      child: Row(
                        children: [
                          // Contenedor de la imagen
                          Container(
                            width: 100,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                "https://imgs.search.brave.com/kL6zwM63G4IQISCOLFjzleJO-VoU8-xDI5cgm4d6FD8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mYXJt/ZXguY2wvY2RuL3No/b3AvcHJvZHVjdHMv/aWJ1cHJvZmVuby02/MDAtbWcteC0yMC1j/b21wcmltaWRvcy1h/c2NlbmQtODYyNTEx/XzEwMjR4MTAyNC53/ZWJwP3Y9MTY5Mjk4/OTQyOA",
                                width: 95,
                                height: 95,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              // Nombre del medicamento
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  "Ibuprofeno",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              // Alias o motivo con el que lo conoce el usuario
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  "Pastilla resfriado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // Cantidad restante
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  "Unidades restantes: 500",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), // Medicamento 2

                  // Medicamento 3
                  InkWell(
                    onTap: () {
                      // Acción que quieres realizar cuando se toque el contenedor
                      print('Medicamento 3 presionado');
                    },
                    child: Container(
                      height: 120,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 203, 159),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black),
                      ),
                      // Estructura del cuadro
                      child: Row(
                        children: [
                          // Contenedor de la imagen
                          Container(
                            width: 100,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                "https://farmaciaslider.pe/my-assets/image/product/8893a6e8d6a09d71df572f33522be653.jpg",
                                width: 95,
                                height: 95,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              // Nombre del medicamento
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  "Bilaxten",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              // Alias o motivo con el que lo conoce el usuario
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  "Pastilla de la alergia",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // Cantidad restante
                              Container(
                                width: 180,
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  "Unidades restantes: 83",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), // Medicamento 3
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
