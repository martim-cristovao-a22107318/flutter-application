import 'package:flutter/material.dart';
import 'ListaAvaliacoes.dart';

class DashBoard extends StatelessWidget{



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            children:  <Widget>[
              Text(
                'Nivel medio de dificuldade próximos 7 dias:',
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                )
              ),
            SizedBox(height: 20.0),
            Text(
              '3',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold
              ),
            ),
              SizedBox(height: 60.0),
              Text(
                  'Nivel medio de dificuldade próximos 7 a 14 dias:',
                  style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: 2.0,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(height: 20.0),
              Text(
                '4',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 60.0),
              Text(
                  'Lista de Avaliações próximos 7 dias',
                  style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: 2.0,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(height: 20.0),
             ElevatedButton(
                 onPressed: (){
                 Navigator.push(
                     context,
                 MaterialPageRoute(builder: (context) => ListaAvaliacoes())
                 );
                 },
                 child: Text("Ir para lista"))
            ],
          ),
      ),


    );
  }
}