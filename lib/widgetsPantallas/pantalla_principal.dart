import 'package:control_medicamentos/Functions/appbar.dart';
import 'package:control_medicamentos/Functions/bottom_bar.dart';
import 'package:control_medicamentos/Functions/boton_switch_off.dart';
import 'package:control_medicamentos/Functions/drawer.dart';
import 'package:control_medicamentos/widgetsPantallas/medicamentos_amoxicilina.dart';
import 'package:flutter/material.dart';
import 'package:control_medicamentos/Functions/boton_switch_on.dart';


class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 85, 133),

      //APPBAR
      appBar: const ClassAppBar(titleText: "Inicio"),

      //Drawer
      drawer: const ClassDrawer(),

      //BottomNavigationBar
      bottomNavigationBar: const BottomBar(),

      //BODY
      body: Column(

        children: [

          Expanded(
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                //fontFamily: "NotoSans"
              ), 
              child: ListView(
                    padding: const EdgeInsets.all(15.0),
                    children: [

                      //TITULO NO completadas
                      Container(
                        margin: const EdgeInsets.only(
                          left: 2.0,
                          top: 10.0,
                          bottom: 15.0
                        ),
                        child: const Text("No Completadas (2)",  //En el futuro será un contador
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              decoration:TextDecoration.underline
                            ),
                          ),
                      ),

                      //Medicamento NO tomado 1
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
                            border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1))
                          ),
                          
                          //Estructura del cuadro
                          child: Row(
                            children: [
                              
                              //Imagen
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
                                  
                                  //Nombre del medicamento
                                  Container(
                                    width: 170,
                                    margin: const EdgeInsets.only(top: 10),
                                    child: const Text(
                                    "Bilaxten",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline
                                    ),
                                    ),
                                  ),
                      
                                  //Alias o motivo con el que lo conoce el usuario
                                  Container(
                                    width: 170,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: const Text(
                                    "Pastilla Alergia",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                      
                                  //Hora de toma
                                  Container(
                                    width: 170,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: const Text(
                                    "13:00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                    ),
                                  )
                      
                                ]
                              ),
                            
                            //Botón Switch
                            const BotonSwitchOff()
                            
                            ],
                          ),
                        ),
                      ),
                      
                      //Medicamento NO tomado 2 (Amoxicilina)
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
                              
                              //Contenedor foto
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
                                    width: 170,
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
                                    width: 170,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: const Text(
                                    "Antibiótico",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                      
                                  //Hora de toma
                                  Container(
                                    width: 170,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: const Text(
                                    "20:00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                    ),
                                  )
                      
                                ]
                              ),
                            
                            //Botón Switch
                            const BotonSwitchOff()
                            
                            ],
                          ),
                      
                        ),
                      ),//Fin Medicamento No Tomado 2

                      //TITULO completadas
                      Container(
                        margin: const EdgeInsets.only(
                          left: 2.0,
                          top: 30.0,
                          bottom: 15.0
                        ),
                        child: const Text("Completadas (4)", //En el futuro será un contador
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              decoration:TextDecoration.underline
                            ),
                          ),
                      ),

                      //Medicamento tomado 1
                      //Medicamento NO tomado 2
                      Container(
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
                                child: Image.network(
                                  "https://imgs.search.brave.com/kL6zwM63G4IQISCOLFjzleJO-VoU8-xDI5cgm4d6FD8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mYXJt/ZXguY2wvY2RuL3No/b3AvcHJvZHVjdHMv/aWJ1cHJvZmVuby02/MDAtbWcteC0yMC1j/b21wcmltaWRvcy1h/c2NlbmQtODYyNTEx/XzEwMjR4MTAyNC53/ZWJwP3Y9MTY5Mjk4/OTQyOA",
                                  width: 95,
                                  height: 95,
                                  ),
                              ),
                            ),

                            Column(

                              children: [
                                
                                //Nombre del medicamento
                                Container(
                                  width: 170,
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                  "Ibuprofeno",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline
                                  ),
                                  ),
                                ),

                                //Alias o motivo con el que lo conoce el usuario
                                Container(
                                  width: 170,
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Text(
                                  "Pastilla resfriado",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                  ),
                                ),

                                //Hora de toma
                                Container(
                                  width: 170,
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Text(
                                  "15:30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                  ),
                                )

                              ]
                            ),
                          
                          //Botón Switch
                          const BotonSwitchOn()
                          
                          ],
                        ),
                      ),

                      //Medicamento tomado 2
                      Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                          vertical: 5.0
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 191, 171),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black)
                        ),
                        child: const Text("Medicamento 2"),
                      ),

                      //Medicamento tomado 3
                      Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                          vertical: 5.0
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 191, 171),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black)
                        ),
                        child: const Text("Medicamento 3"),

                      ),

                      //Medicamento tomado 4
                      Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                          vertical: 5.0
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 191, 171),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black)
                        ),
                        child: const Text("Medicamento 4"),

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
