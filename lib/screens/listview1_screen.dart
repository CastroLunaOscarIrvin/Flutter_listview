import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  var juegos = ["Pou", "Fortnai", "Pacman", "Mortalcombat"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View tipo 1'),
        ),
        body: ListView(
          children: [
            ...juegos
                .map((juegos) => ListTile(
                      title: Text(juegos),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pink,
                      ),
                      onTap: () {
                        var seleccion = juegos;
                        print(seleccion);
                      },
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
