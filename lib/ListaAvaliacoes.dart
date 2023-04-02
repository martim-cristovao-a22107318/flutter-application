import 'package:flutter/material.dart';

import 'RegistoAvaliacoes.dart';

class Avaliacao {
  String disciplina;
  int dificuldade;
  String tipoDeAvaliacao;
  DateTime data;

  Avaliacao({required this.disciplina, required this.dificuldade, required this.tipoDeAvaliacao, required this.data});
}

 int pos = 0;

class ListaAvaliacoes extends StatefulWidget {
  ListaAvaliacoes({Key? key}) : super(key: key);

  @override
  _ListaAvaliacoesState createState() => _ListaAvaliacoesState();
}

class _ListaAvaliacoesState extends State<ListaAvaliacoes> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Avaliações',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Avaliações'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: avaliacoes.length,
          itemBuilder: (context, index) {
            pos = index;
            final avaliacao = avaliacoes[index];
            return ListTile(
              title: Text(avaliacoes[index].disciplina),
              subtitle: Text(avaliacoes[index].dificuldade.toString()),
              trailing: Text(avaliacoes[index].tipoDeAvaliacao.toString()),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesAvaliacao(avaliacao: avaliacao),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
class DetalhesAvaliacao extends StatelessWidget {
  final Avaliacao avaliacao;

  const DetalhesAvaliacao({Key? key, required this.avaliacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes da Avaliação"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
              'Disciplina:',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          SizedBox(height: 10.0),
          Text(
            '${avaliacao.disciplina}',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 21.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 40.0),
          Text(
              'Dificuldade:',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          SizedBox(height: 10.0),
          Text(
            '${avaliacao.dificuldade}',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 21.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 40.0),
          Text(
              'Tipo de Avaliação',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          SizedBox(height: 10.0),
          Text(
            '${avaliacao.tipoDeAvaliacao}',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 21.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            'Data',
            style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '${avaliacao.data}',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 21.0,
                fontWeight: FontWeight.bold
            ),
          ),

        SizedBox(height: 50.0,),

          ElevatedButton(
              onPressed: (){
                avaliacoes.removeAt(pos);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ListaAvaliacoes(),
                ),
                );
              },
              child: Icon(Icons.delete),
          ),

          ElevatedButton(
            onPressed: (){
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => ListaAvaliacoes(),
                ),
              );
            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
