import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Database {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  Future<void> create(
      String nombre,
      String capitan,
      String entrenador,
      String estaEnPrimera,
      String web,
      String estadio,
      String capasidad,
      String latitud,
      String longitud) async {
    try {
      await firestore.collection("equipos").add({
        'nombre': nombre,
        'capitan': capitan,
        'entrenador': entrenador,
        'estaEnPrimera': estaEnPrimera,
        'web': web,
        'estadio': estadio,
        'capasidad': capasidad,
        'latitud': latitud,
        'longitud': longitud
      });
    } catch (e) {
      print(e);
    }
  }

  Future<List> read() async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot = await firestore.collection('equipos').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "nombre": doc['nombre'],
            "capitan": doc['capitan'],
            "entrenador": doc['entrenador'],
            "estaEnPrimera": doc['estaEnPrimera'],
            "web": doc['web'],
            "estadio": doc['estadio'],
            "capasidad": doc['capasidad'],
            "latitud": doc['latitud'],
            "longitud": doc['longitud']
          };
          docs.add(a);
        }
      }
    } catch (e) {
      print(e);
    }
    return docs;
  }
}
