import 'package:flutter/material.dart';

//Clase de botón switch
class BotonSwitchOn extends StatefulWidget {
  const BotonSwitchOn({super.key});

  @override
  State<BotonSwitchOn> createState() => _BotonSwitchOnState();
  
}

class _BotonSwitchOnState extends State<BotonSwitchOn> {
  bool light = true;

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