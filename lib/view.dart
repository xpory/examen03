import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'database.dart';

class View extends StatefulWidget {
  View({Key? key, required this.equipo, required this.db}) : super(key: key);
  Map equipo;
  Database db;
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController entrenadorController = TextEditingController();
  TextEditingController estaEnPrimeraController = TextEditingController();
  TextEditingController webController = TextEditingController();
  TextEditingController estadioController = TextEditingController();
  TextEditingController capasidadController = TextEditingController();
  TextEditingController latitudController = TextEditingController();
  TextEditingController congitudController = TextEditingController();
  TextEditingController capitanController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print(widget.equipo);
    nombreController.text = widget.equipo['nombre'];
    capitanController.text = widget.equipo['capitan'];
    entrenadorController.text = widget.equipo['entrenador'];
    estaEnPrimeraController.text = widget.equipo['estaEnPrimera'];
    webController.text = widget.equipo['web'];
    estadioController.text = widget.equipo['estadio'];
    capasidadController.text = widget.equipo['capasidad'].toString();
    latitudController.text = widget.equipo['latitud'];
    congitudController.text = widget.equipo['longitud'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Equipo seleccionado"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                enabled: false,
                decoration:
                    const InputDecoration(labelText: 'Nombre del equipo'),
                controller: nombreController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration:
                    const InputDecoration(labelText: 'Nombre del capitan'),
                controller: capitanController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration:
                    const InputDecoration(labelText: 'Nombre del entrenador'),
                controller: entrenadorController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration: const InputDecoration(labelText: 'Esta en primera'),
                controller: estaEnPrimeraController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration: const InputDecoration(labelText: 'Pagina web'),
                controller: webController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration:
                    const InputDecoration(labelText: 'Nombre del estadio'),
                controller: estadioController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration:
                    const InputDecoration(labelText: 'Capasidad del estadio'),
                controller: capasidadController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                decoration:
                    const InputDecoration(labelText: 'Latitud del estadio'),
                controller: latitudController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
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
    );
  }
}
