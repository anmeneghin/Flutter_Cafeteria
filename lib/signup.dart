import 'package:app_cafeteria/login_cafeteria.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:app_cafeteria/dados.dart';


class SignupPage extends StatefulWidget {
  @override
  SignupPageState createState() => SignupPageState();
}


class SignupPageState extends State<SignupPage> {
  List <Dados> listaDeUsuarios = List <Dados> ();

  //Chave que identifica unicamente o formulário
  var formKey = GlobalKey<FormState>();

  //Armazer valores do peso e altura
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafeteria Sweet Coffe'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: (){
                setState(() {
                  txtNome.text = "";
                  txtEmail.text = "";
                  txtSenha.text = "";
                });
              }
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage('imagens/jogador.png', ),
                  fit: BoxFit.fitHeight,
                ),
              ),

              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Color(0XFF2AD9E0),
                      Color(0XFF2C9AAC),
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              controller: txtNome,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              controller: txtEmail,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              controller: txtSenha,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0XFF2AD9E0),
                    Color(0XFF2C9AAC),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    setState(() {
                      Dados dados = new Dados();
                      dados.nome = txtNome.text;
                      dados.email = txtEmail.text;
                      dados.senha = txtSenha.text;
                      listaDeUsuarios.add(dados);
                    });
                    // Navigator.pushNamed(context, "/login",
                    //     arguments: listaDeUsuarios);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}