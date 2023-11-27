import 'package:flutter/material.dart';

//Clase de botón switch
class BotonSwitchOff extends StatefulWidget {
  const BotonSwitchOff({super.key});

  @override
  State<BotonSwitchOff> createState() => _BotonSwitchOffState();
  
}

class _BotonSwitchOffState extends State<BotonSwitchOff> {
  bool light = false;

  final MaterialStateProperty<Icon?> thumbIcon = MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Switch(
      thumbIcon: thumbIcon,
      //activeColor: Colors.green,
      value: light,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}