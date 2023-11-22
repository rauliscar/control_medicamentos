import 'package:flutter/material.dart';

//Clase de botón switch
class BotonSwitch extends StatefulWidget {
  const BotonSwitch({super.key});

  @override
  State<BotonSwitch> createState() => _BotonSwitchState();
  
}

class _BotonSwitchState extends State<BotonSwitch> {
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