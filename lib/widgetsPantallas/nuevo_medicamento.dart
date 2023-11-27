import 'package:control_medicamentos/Functions/appbar.dart';
import 'package:control_medicamentos/Functions/drawer.dart';
import 'package:flutter/material.dart';

class NuevoMedicamento extends StatelessWidget {
  const NuevoMedicamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 85, 133),

      // APPBAR
      appBar: const ClassAppBar(titleText: "Nuevo Medicamento"),

      // Drawer
      drawer: const ClassDrawer(),

      body: Column(
        
        children: [

          Expanded(
            child: ListView(
              children: [
                Container(
                // margin: const EdgeInsets.all(15.0),
                // decoration: BoxDecoration(
                //   color: const Color.fromARGB(255, 221, 203, 159),
                //   border: Border.all(
                //     color: Colors.black,
                //     width: 4,
                //   ),
                //   borderRadius: const BorderRadius.all(Radius.circular(20)),
                // ),
            
                //Column general
                child: Column(
                  children: [
            
                    //Nombre
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30.0,
                        left: 20.0
                      ),
                      child: const Row(
                        children: [
                          Text(
                            "Nombre:",
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                    ),//FinNombre
            
                    //NombreTextField
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        right: 20.0
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Inserta el NOMBRE del medicamento',
                          enabledBorder:OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(255, 219, 219, 219),
                        ),
                      ),
                    ),
            
                    //Alias
                    Container(
                      margin: const EdgeInsets.only(
                          top: 15.0,
                          left: 20.0
                        ),
                      child: const Row(
                        children: [
                          Text(
                            "Alias:",
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                    ),//FinAlias
            
                    //AliasTextField
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        right: 20.0
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Inserta el ALIAS del medicamento',
                          filled: true,
                          fillColor: Color.fromARGB(255, 219, 219, 219),
                        ),
                      ),
                    ),
            
                    //Descripción
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15.0,
                            left: 20.0
                          ),
                          child: const Text(
                            "Descripción:",
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ],
                      ),//Descripción
            
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 90,
                            margin: const EdgeInsets.only(
                            top: 10.0,
                            left: 20.0,
                            right: 20.0
                            ),
                            child: const Scrollbar(
                              interactive: true,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Inserta una descripción',
                                  enabledBorder: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 219, 219, 219),
                                ),
                                maxLines: 4,
                              )
                            ),
                          ),
                        )
                      ],
                    ),//FinTextFieldDesripción
            
                    //Instrucciones
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15.0,
                            left: 20.0
                          ),
                          child: const Text(
                            "Instrucciones:",
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ],
                      ),
            
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 3.0),
                              margin: const EdgeInsets.only(
                              top: 5.0,
                              left: 20.0,
                              right: 20.0
                              ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 219, 219, 219),
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1), width: 2),
                            ),
                            child: const Text(
                            "Tomar con agua.",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            ),
                            ),
                          )
                        ],
                    ),//FinInstrucciones
            
                    //Cantidad Restante
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                                  top: 15.0,
                                  left: 20.0
                                ),
                          child: Row(
                            children: [
                              const Text(
                                "Cantidad restante:",
                                style: TextStyle(
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
            
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 20.0
                                ),
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 192, 62, 52),
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1), width: 2),
                                ),
                                child: const Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),//FinCantidadRestante
            
                    //Botones
                    Container(
                      margin: const EdgeInsets.only(top:13.0, left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonBar(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: ElevatedButton(  
                                  style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(5.0),
                                    shadowColor: MaterialStatePropertyAll( Color.fromARGB(255, 5, 165, 10)),
                                    minimumSize:MaterialStatePropertyAll(Size(120, 40)),
                                    backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 11, 77, 13))
                                  ),
                                  onPressed: () {/** */},  
                                  child: const Text('Tratamientos'), 
                                ),
                              ),  
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: ElevatedButton(   
                                  style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(5.0),
                                    shadowColor: MaterialStatePropertyAll( Color.fromARGB(255, 5, 165, 10)),
                                    minimumSize:MaterialStatePropertyAll(Size(120, 40)),
                                    backgroundColor:MaterialStatePropertyAll( Color.fromARGB(255, 221, 203, 159)),
                                    side: MaterialStatePropertyAll(BorderSide(
                                      color: Colors.black,
                                      width: 3.0
                                    ))
                                  ),
                                  onPressed: () {/** */}, 
                                  child: const Text(
                                    'Editar', 
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),  
                                ),
                              ),  
                            ],
                          )
                        ],
                      ),
                    )
                  ],//FinChildenColumn
                ),
              ),
              ],
              
            ),
          )
        ],//ChildrenBody

      ),//ColumnBody
    );
  }
}