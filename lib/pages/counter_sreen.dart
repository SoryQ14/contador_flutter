import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  //propiedades del widget
  const CounterScreen({super.key}); 
 
 
  @override
  State<CounterScreen> createState()=> _CounterScreenState(); 
}
class _CounterScreenState extends State<CounterScreen>{
  int contador = 0; 

  @override
  Widget build(BuildContext context){
    //widget scaffold nos da propiedades y caracteristicas visuales
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w200,
                color: Colors.indigoAccent ),
            ),
            Text(
              'Clic ${contador == 1 ? ' ':'s'}',//este es un if, está comparando
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800
              ),
            )
          ],
        ),
      ),
      //FloatingActionButton Nos crea en la parte de abajo botones 
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(//aqui llega el metodo con las propiedades definidas 
            icono: Icons.plus_one_outlined,
            onPressed: (){
              setState(() {
                contador++; 
              });
            },
          ),
          const SizedBox(width: 5),
          CustomButton(
            icono: Icons.exposure_minus_1_outlined,
            onPressed: (){
              setState(() {
                if(contador<=0) {
                  contador = 0; 
                }else {
                  contador--; 
                }
              });
            },
          ),
          const SizedBox(width: 5),
          CustomButton(
            icono: Icons.refresh_outlined,
            onPressed: (){
              setState(() {
                contador = 0; 
              });
            },
          ),
        ],
      ),
    ); 
  }
}

//Propiedades de los botones
class CustomButton extends StatelessWidget{
  final IconData icono;
  final VoidCallback? onPressed; 
  const CustomButton({super.key, required this.icono, this.onPressed}); 

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      shape: const StadiumBorder(),//redondeado
      onPressed: onPressed,//le pasa el metodo del boton 
      child: Icon(icono),//imagen 
    ); 
  }
}