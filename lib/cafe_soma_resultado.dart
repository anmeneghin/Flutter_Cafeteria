import 'package:flutter/material.dart';

//
// TELA RESULTADO
//
class TelaResultado extends StatefulWidget {
  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  @override
  Widget build(BuildContext context) {

    //
    // Recuperar os dados da Tela Principal
    //
    Map dados = ModalRoute.of(context).settings.arguments;
    double resultado;

    if ( dados != null){

      if ( dados['operacao'] == '+'){
        resultado = double.parse(dados['valor1'])+double.parse(dados['valor2']);
      }else if ( dados['operacao'] == '-'){
        resultado = double.parse(dados['valor1'])-double.parse(dados['valor2']);
      }

    }else{
      Navigator.pop(context);
    }


    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Cafeteria Sweet Coffe'),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        actions: [
          IconButton(
              icon: Icon(Icons.favorite)
          )
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Valor 1', style: TextStyle(fontSize: 16),),
            Text(dados['valor1'], style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,)),
            SizedBox(height: 10,),

            Text('Valor 2', style: TextStyle(fontSize: 16),),
            Text(dados['valor2'], style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,)),
            SizedBox(height: 10,),

            Text('Operação', style: TextStyle(fontSize: 16),),
            Text(dados['operacao'], style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,)),
            SizedBox(height: 30,),

            Text('Resultado', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            Text(resultado.toStringAsFixed(2), style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,)),

          ],
        ),
      ),
    );
  }
}


