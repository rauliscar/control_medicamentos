
import 'package:control_medicamentos/Functions/bottom_bar.dart';
import 'package:control_medicamentos/widgetsPantallas/medicamentos.dart';
import 'package:control_medicamentos/widgetsPantallas/medicamentos_amoxicilina.dart';
import 'package:flutter/material.dart';

import '../Functions/appbar.dart';
import '../Functions/drawer.dart';

class Reposiciones extends StatelessWidget {
  const Reposiciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 85, 133),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Reposiciones()),
            );
        },
        label: const Text(
          'Farmacias cercanas',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        icon: const Icon(
          Icons.add,
          color: Colors.black,),
        elevation: 20,
        backgroundColor: const Color.fromARGB(255,129, 143, 180),
        hoverElevation: 10.0,
      ),

      //APPBAR
      appBar: const ClassAppBar(titleText: "Reposiciones"),

      //Drawer
      drawer: const ClassDrawer(),

      //BottomNavigationBar
      bottomNavigationBar: const BottomBar(),

      //Body
      body:Column(

        children: [

          Expanded(
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black
              ), 
              child: ListView(
                    padding: const EdgeInsets.all(15.0),
                    children: [

                      //Medicamento por reponer 1
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
                          margin: const EdgeInsets.symmetric(
                            vertical: 5.0
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 221, 203, 159),
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: Colors.black)
                          ),
                      
                          //Estructura del cuadro
                          child: Row(
                            children: [
                              
                              //Contenedor de la imagen
                              Container(
                                width: 100,
                                margin: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1))
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image.network("https://botplusweb.farmaceuticos.com/Documentos/AEMPS/Fotos/200439/full/66252_materialas.jpg",
                                  ),
                                ),
                              ),
                      
                              Column(
                      
                                children: [
                                  
                                  //Nombre del medicamento
                                  Container(
                                    width: 180,
                                    margin: const EdgeInsets.only(top: 10),
                                    child: const Text(
                                    "Amoxicilina",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline
                                    ),
                                    ),
                                  ),
                      
                                  //Alias o motivo con el que lo conoce el usuario
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
                      
                                  //Cantidad restante
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
                                  )
                      
                                ]
                              ),
                      
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    child: IconButton(
                                      iconSize: 33,
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(Colors.green)
                                      ),
                                      ),
                                    )
                                ],
                              )
                          
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ) 
          ),
        ],
      ), 
    );
  }
}