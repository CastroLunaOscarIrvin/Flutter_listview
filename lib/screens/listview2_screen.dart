import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var juegos = ["Pou", "Fortnai", "Pacman", "Mortalcombat"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View tipo 2'),
        ),
        body: ListView.separated(
          // Obtener el tamaño de mi lista

          itemCount: juegos.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(juegos[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            onTap: () {
              var seleccion = juegos[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
