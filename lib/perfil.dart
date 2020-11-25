import 'package:flutter/material.dart';

import 'constants.dart';
import 'home.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Mi perfil",
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
            actions: <Widget>[
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return Constants.opciones.map((String opciones) {
                    return PopupMenuItem<String>(
                      value: opciones,
                      child: Text(
                        opciones,
                      ),
                    );
                  }).toList();
                },
              )
            ],
            backgroundColor: Colors.pink,
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Llama en caso de incendios",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("Se la voz de tu comunidad"),
                leading: Icon(
                  Icons.call,
                  color: Colors.blue[500],
                ),
              ),
              Divider(),
              ListTile(
                  title: Text(
                    "O llama al (123)+4",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.pink,
                  )),
              Divider(),
              ListTile(
                  title: Text(
                    "Nueva actualización disponible",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(
                    Icons.download_done_outlined,
                    color: Colors.blue,
                  )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 200.0),
                    child: Tooltip(
                      message: 'Este botón va a la primer pantalla',
                      preferBelow: false,
                      decoration: BoxDecoration(color: Colors.pink),
                      child: RaisedButton(
                        child: Text(
                          "Volver al home",
                          style: TextStyle(color: Colors.pink),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
