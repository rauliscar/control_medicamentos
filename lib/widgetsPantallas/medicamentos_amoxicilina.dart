import 'package:control_medicamentos/Functions/appbar.dart';
import 'package:control_medicamentos/Functions/drawer.dart';
import 'package:control_medicamentos/widgetsPantallas/medicamentos.dart';
import 'package:flutter/material.dart';

class MedicamentoAmoxilicina extends StatelessWidget {
  MedicamentoAmoxilicina({Key? key}) : super(key: key);

  int? nPastillasAmoxicilina = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 85, 133),

      // APPBAR
      appBar: const ClassAppBar(titleText: "Amoxicilina"),

      // Drawer
      drawer: const ClassDrawer(),

      body: Column(
        
        children: [

          Expanded(
            child: Container(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                
                    //Foto
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                              width: 230,
                              margin: const EdgeInsets.only(top: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(5)),
                                border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1), width: 2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.network(
                                  "https://botplusweb.farmaceuticos.com/Documentos/AEMPS/Fotos/200439/full/66252_materialas.jpg",
                                  //width: 245,
                                  //height: 245,
                                ),
                              ),
                        )
                      ],
                    ),
                
                    //Nombre
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20.0,
                        left: 20.0
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Nombre:",
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
                              color: const Color.fromARGB(255, 219, 219, 219),
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1), width: 2),
                            ),
                            child: const Text(
                              "Amoxicilina",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),//FinNombre
                
                    //Alias
                    Container(
                      margin: const EdgeInsets.only(
                              top: 15.0,
                              left: 20.0
                            ),
                      child: Row(
                        children: [
                          const Text(
                            "Alias:",
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
                              color: const Color.fromARGB(255, 219, 219, 219),
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1), width: 2),
                            ),
                            child: const Text(
                              "Antibiótico",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),//FinAlias
                
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
                      ),
                
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 85,
                              padding: const EdgeInsets.only(top:3.0, left: 6.0),
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
                            child: Scrollbar(
                              interactive: true,
                              child: ListView(
                                children: const [
                                  Text(
                                  "Esta es la descripción de mi antibiótico, es amoxicilina , la cual se toma cada 8 horas \nTípica amoxicilina de toda la vida \nSi hay más texto hace scroll...\nPermite scroll",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                  ),
                                ],
                                
                              ),
                            ),
                                                ),
                          )
                        ],
                    ),//FinDesripción
                
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
                                child: Text(
                                  "$unidadesAmoxicilina",
                                  style: const TextStyle(
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
                      margin: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonBar(
                            children: [
                              Container(
                                width: 130,
                                height: 70,
                                margin: const EdgeInsets.only(right: 20),
                                child: ElevatedButton(   
                                  style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(5.0),
                                    shadowColor: MaterialStatePropertyAll( Color.fromARGB(255, 5, 106, 165)),
                                    minimumSize:MaterialStatePropertyAll(Size(120, 40)),
                                    backgroundColor:MaterialStatePropertyAll( Color.fromARGB(255, 221, 203, 159)),
                                    side: MaterialStatePropertyAll(BorderSide(
                                      color: Colors.black,
                                      width: 3.0
                                    ))
                                  ),
                                  onPressed: () {/** */}, 
                                  child: const Text(
                                    'Tratamientos', 
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),  
                                ),
                              ), 
                
                              Container(
                                width: 130,
                                height: 70,
                                margin: const EdgeInsets.only(left: 20),
                                child: ElevatedButton(   
                                  style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(5.0),
                                    shadowColor: MaterialStatePropertyAll( Color.fromARGB(255, 5, 106, 165)),
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
                    ),//FinFilaBotones
                
                    //Atrás
                      SizedBox(
                        width: 180,
                        height: 60,
                        child: ElevatedButton(   
                          style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(5.0),
                            shadowColor: MaterialStatePropertyAll( Color.fromARGB(255, 5, 106, 165)),
                            minimumSize:MaterialStatePropertyAll(Size(120, 40)),
                            backgroundColor:MaterialStatePropertyAll( Color.fromARGB(255, 207, 110, 31)),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.black,
                              width: 3.0
                            ))
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Medicamentos()),
                            );
                          }, 
                          child: const Text(
                            'Atrás', 
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                            ),  
                        ),
                      ),//Fin Cancelar
                
                  ],//FinChildenColumn
                ),
              ),
            ),
          )
        ],//ChildrenBody

      ),//ColumnBody
    );
  }
}