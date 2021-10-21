import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'database.dart';

class Add extends StatefulWidget {
  Add({Key? key, required this.db}) : super(key: key);
  Database db;
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController entrenadorController = TextEditingController();
  TextEditingController estaEnPrimeraController = TextEditingController();
  TextEditingController webController = TextEditingController();
  TextEditingController estadioController = TextEditingController();
  TextEditingController capacidadController = TextEditingController();
  TextEditingController latitudController = TextEditingController();
  TextEditingController congitudController = TextEditingController();
  TextEditingController capitanController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar Equipo"),
        actions: [
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // widget.db.delete(widget.country["id"]);
                // Navigator.pop(context, true);
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Nombre del equipo'),
                controller: nombreController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Nombre del capitan'),
                controller: capitanController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Nombre del entrenador'),
                controller: entrenadorController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Esta en primera'),
                controller: estaEnPrimeraController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Pagina web'),
                controller: webController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Nombre del estadio'),
                controller: estadioController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Capasidad del estadio'),
                controller: capacidadController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Latitud del estadio'),
                controller: latitudController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Longitud del estadio'),
                controller: congitudController,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.transparent,
        child: BottomAppBar(
          color: Colors.transparent,
          // ignore: deprecated_member_use
          child: RaisedButton(
              color: Colors.blue,
              onPressed: () {
                widget.db.create(
                    nombreController.text,
                    capitanController.text,
                    entrenadorController.text,
                    estaEnPrimeraController.text,
                    webController.text,
                    estadioController.text,
                    capacidadController.text,
                    latitudController.text,
                    congitudController.text);
                Navigator.pop(context, true);
              },
              child: const Text(
                "Guardar",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
