import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quantidade de agua diaria',
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Água diária'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh),
              onPressed: (){})
        ],
      ),
      body:  Column(

        children: [
          Text('Quantos litros de água devo beber por dia?',
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,

          ),
            textAlign: TextAlign.justify
            ,
          ),
          Form(
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "QUAL É O SEU PESO?",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}






