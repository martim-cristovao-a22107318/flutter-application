import 'package:flutter/material.dart';
import 'package:untitled/DashBoard.dart';
import 'package:untitled/ListaAvaliacoes.dart';

import 'RegistoAvaliacoes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calendario Avaliações",
        home: CalendarioAvaliacoes());
  }}

class CalendarioAvaliacoes extends StatefulWidget{
  @override
  _CalendarioAvaliacoesState createState() => _CalendarioAvaliacoesState();
}

class _CalendarioAvaliacoesState extends State<CalendarioAvaliacoes> {
  int index = 0;
  final screens = [
    DashBoard(),
    ListaAvaliacoes(),
    RegistoAvaliacoes()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          items:const [
            BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Dashboard',
          ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.format_list_bulleted,
                  color: Colors.grey
              ),
              label: 'Listagem Avaliações',
          ),

            BottomNavigationBarItem(
                icon: Icon(
                    Icons.edit,
                    color: Colors.grey,
                ),
                label: 'Registo Avaliacão',

            ),
          ],
              backgroundColor: Colors.grey[900],
              currentIndex: index,
              onTap: (value){
            setState(() {
              index = value;
            });
              },
      ),
    );
  }
}



