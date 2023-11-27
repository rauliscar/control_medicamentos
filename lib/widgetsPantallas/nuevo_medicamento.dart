import 'package:control_medicamentos/Functions/appbar.dart';
import 'package:control_medicamentos/Functions/drawer.dart';
import 'package:control_medicamentos/widgetsPantallas/medicamentos.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class NuevoMedicamento extends StatelessWidget {
  NuevoMedicamento({Key? key}) : super(key: key);

  File? _image;

  Future<void> _selectImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      // Actualizar la interfaz gráfica con la imagen seleccionada
      _image = File(pickedFile.path);
    }
  }

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
            
                    //Titulo Nombre
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20.0,
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
                    ),//Fin Titulo Nombre
            
                    //Nombre TextField
                    Container(
                      margin: const EdgeInsets.only(
                        top: 5.0,
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
            
                    //Titulo Alias
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0,
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
                    ),//Fin Titulo Alias
            
                    //Alias TextField
                    Container(
                      margin: const EdgeInsets.only(
                        top: 5.0,
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
            
                    //Titulo Descripción
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10.0,
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
                      ),//Titulo Descripción

                    //TextField Descripción
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 90,
                            margin: const EdgeInsets.only(
                            top: 5.0,
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
            
                    //Titulo Instrucciones
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10.0,
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
                      ),//Fin Titulo Instrucciones

                    //TextField Instrucciones
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 90,
                            margin: const EdgeInsets.only(
                            top: 5.0,
                            left: 20.0,
                            right: 20.0
                            ),
                            child: const Scrollbar(
                              interactive: true,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Inserta las instrucciones de uso',
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
                    ),//FinTextFieldInstrucciones
            
                    //Cantidad Restante
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                                  top: 15.0,
                                  left: 20.0
                                ),
                          child: const Row(
                            children: [
                              Text(
                                "Nº de cajas:",
                                style: TextStyle(
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w700
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width: 70,
                          height: 50,
                          margin: const EdgeInsets.only(
                            top: 10.0,
                            left: 20.0,
                            right: 20.0
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color.fromARGB(255, 219, 219, 219)
                            ),
                            maxLength: 4,
                          ),
                        ),
                      ],
                    ),//FinCantidadCajas

                    //PastillasCaja
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                                  top: 15.0,
                                  left: 20.0
                                ),
                          child: const Row(
                            children: [
                              Text(
                                "Nº de pastillas por caja:",
                                style: TextStyle(
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w700
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width: 70,
                          height: 50,
                          margin: const EdgeInsets.only(
                            top: 10.0,
                            left: 20.0,
                            right: 20.0
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color.fromARGB(255, 219, 219, 219)
                            ),
                            maxLength: 4,
                          ),
                        ),
                      ],
                    ),//FinPastillasCaja

                    // Botones para seleccionar imágenes
                      Container(
                        margin: const  EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            const Text(
                              "Añadir foto: ",
                              style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w700
                                  ),
                            ),

                            IconButton(
                              onPressed: () async {
                                await _selectImage(ImageSource.gallery);
                              },
                              icon: const Icon(Icons.collections,  size: 40),
                            ),

                            const SizedBox(width: 30,),
                      
                            IconButton(
                              onPressed: () async {
                                await _selectImage(ImageSource.camera);
                              },
                              icon: const Icon(Icons.add_a_photo, size: 40),
                            ),
                      
                            // Mostrar la imagen seleccionada
                            _image == null
                                ? Container() // Si no hay imagen, muestra un contenedor vacío
                                : Image.file(_image!),
                          ],
                        ),
                      ), // Mostrar la imagen seleccionada

                    //Botones
                    Container(
                      margin: const EdgeInsets.only(top:13.0, left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonBar(
                            children: [
                              //Cancelar
                              Container(
                                width: 130,
                                height: 50,
                                margin: const EdgeInsets.only(right: 20),
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
                                    'Cancelar', 
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),  
                                ),
                              ),//Fin Cancelar

                              //Guardar
                              Container(
                                width: 130,
                                height: 50,
                                margin: const EdgeInsets.only(left: 20, right: 20),
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Medicamentos()),
                                    );
                                  }, 
                                  child: const Text(
                                    'Guardar', 
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),  
                                ),
                              ),//Fin Guardar
                                
                            ],
                          ),

                        ],
                      ),
                    ),//FinFilaBotones

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