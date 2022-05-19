import 'dart:math';

import 'package:chat_app/model/contact_model.dart';

class ContactRepository{
  List<Contact> contacts=[Contact(id: 1, name: "Tarik", group: "BDCC", profile: "TA"),
                          Contact(id: 2, name: "Ayoub", group: "GLSID", profile: "AY"),
                          Contact(id: 3, name: "Mohamed", group: "BDCC", profile: "MO"),
                          Contact(id: 4, name: "Khalil", group: "GLSID", profile: "Kh"),
                          Contact(id: 5, name: "Mohammed", group: "BDCC", profile: "MO")];

//Créeer des méthodes asynchrone pour communiquer avec le backend
    Future<List<Contact>> allContacts()async{
      var future = await Future.delayed(Duration(seconds: 2));
      //génerer des nombre aléatoire entre 0 et 10
      int rand=new Random().nextInt(10);
      if(rand>5){
        return contacts;
      }else{
        throw Exception("Erreur de chargement des contacts");
      }
    }

    Future<List<Contact>> contactsByGroup(String group)async{
      var future = await Future.delayed(Duration(seconds: 2));
      int rand=new Random().nextInt(10);
      if(rand>2){
        return contacts.where((element) => element.group==group).toList();
      }else{
        throw Exception("Erreur de chargement des contacts");
      }
    }
}