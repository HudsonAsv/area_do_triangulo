import 'package:area_do_triangulo/BLLcalculoA.dart';
import 'package:flutter/material.dart';
import 'calculoA.dart';
import 'erro.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Área do triângulo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title:"Área do triângulo"),
    );
  }
}


class MyHomePage extends StatefulWidget{
  MyHomePage({Key?key, required this.title}):super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String resposta='', area='';
  TextEditingController controleB = TextEditingController();
  TextEditingController controleH = TextEditingController();

  void calcularA() {
    setState(() {
      calculoA calc = calculoA();
      calc.valorB = controleB.text;
      calc.valorH = controleH.text;
      BLLcalculoA.validaDados(calc);
      if(Erro.error) {
        resposta = Erro.msg;
      }else{
        area = calc.area;
        resposta = area;
      }
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget necessário para o layout do flutter, contendo o conteúdo que será mostrado na tela
      body: Center(
        //o wiget Center ocupa toda a área possível
        child: Column(
          //adicionamos Column para organizar os filhos (children) um abaixo do outro
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              //adicionamos Row para organizar os filhos (children) um ao lado do outro
              children: [
                Text(
                  //adicionamos Text para orientar o usuário o que escrever no TextField
                  'Digite a base do triangulo:',
                ),
                Container(
                  //criamos um Container para declarar um TextField que seria filho (child) com tamanho (witdh) de
                  // 100px, porque os TextField precisam de tamanho
                  width: 100,
                  child: TextField(
                    controller: controleB,
                  ),
                ),
              ],
            ),
            Row(
              //adicionamos Row para organizar os filhos (children) um ao lado do outro
              children: [
                Text(
                  //acidionamos Text para orientar o usuário o que escrever no TextField
                  'Digite a altura do triangulo: ',
                ),
                Container(
                  //criamos um Container para declarar um TextField que seria (child) com um tamanho (width) de
                  // 100px, porque os TextField precisam de um tamanho
                  width: 100,
                  child: TextField(
                    //TextField para o usuário inserir valores
                    controller: controleH,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            TextButton(
              //Esse widget seria um botao, que quando apertado, chamaria a função calcularA (para calcular a área)
              // e tem como filho (child) um Text, que seria o texto que pararece no botão
                onPressed: calcularA,
                child: Text('Calcular')
            ),
            Row(
              //adicionamos Row para organizar os filhos (children) um ao lado do outro
              children: [
                Text(
                  //indicamos o que está escrito ao lado
                    'Sua área é: '
                ),
                Text('$resposta' //mostramos a área por meio desse Text
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}