import 'package:flutter/material.dart';
import 'package:hola_mundo/pages/counter_sreen.dart';

void main()=> runApp(MyApp()); 

class MyApp extends StatelessWidget{
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    //widget MaterialApp =>usar materia(vista tipo android) los widges son constructores
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData( //es un constructot
        useMaterial3: true,
        colorSchemeSeed: Colors.indigoAccent, 
      ),
      //Widget que se sejecutará al principio
      home: CounterScreen(),
    );
  }
}