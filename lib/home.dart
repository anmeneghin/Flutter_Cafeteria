import 'package:app_cafeteria/info_page.dart';
import 'package:app_cafeteria/configuracao_page.dart';
import 'package:flutter/material.dart';
import 'cafe_page.dart';

class HomePage extends StatelessWidget {
  Widget titleSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Menu',
              style: TextStyle(
                color: new Color(0XFF000200),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ],
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafeteria Sweet Coffe'),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConfigPage(),
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: 20,
            left: 40,
            right: 40
        ),
        child: ListView(
          children: [
            titleSection,
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 60
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [

                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (
                                SizedBox(
                                    width: 128,
                                    height: 128,
                                    child :
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TelaPrincipal(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          child: Image.asset('imagens/cafe_copo3.jpeg', width: 128,height: 128,),
                                        ),
                                      ),
                                    )
                                )
                            )
                        ),
                        Text(
                          "Cafés",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: new Color(0XFF237F8B),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (
                                SizedBox(
                                    width: 128,
                                    height: 128,
                                    child: Image.asset(
                                        'imagens/drink_cold5.jpeg')
                                )
                            )
                        ),
                        Text(
                          "Bebidas Geladas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: new Color(0XFF237F8B),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(

              child: Padding(
                padding: EdgeInsets.only(
                    top: 60
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (
                                SizedBox(
                                    width: 128,
                                    height: 128,
                                    child: Image.asset('imagens/cha2.jpeg')
                                )
                            )
                        ),
                        Text(
                          "Chás",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: new Color(0XFF237F8B),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (
                                SizedBox(
                                    width: 128,
                                    height: 128,
                                    child: Image.asset('imagens/dessert.jpg')
                                )
                            )
                        ),
                        Text(
                          "Sobremesas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: new Color(0XFF237F8B),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        color: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPage(),
            ),
          );
        },
      ),
    );
  }
}

