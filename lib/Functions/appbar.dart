import 'package:flutter/material.dart';

class ClassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const ClassAppBar({Key? key, required this.titleText})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 33, 23, 112),
      iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      title: Text(
        titleText,
        style: const TextStyle(
          color: Colors.white
        ),
        ),
      actions: [
        // Botón notificaciones
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
        // Botón Perfil
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outlined),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    );
  }
}
