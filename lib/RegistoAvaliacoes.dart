import 'package:flutter/material.dart';
import 'package:untitled/ListaAvaliacoes.dart';

final List<Avaliacao> avaliacoes = [
  Avaliacao(disciplina: 'Computacao Movel', dificuldade: 5, tipoDeAvaliacao: 'Frequencia', data: DateTime.now()),
  Avaliacao(disciplina: 'LP2', dificuldade: 4, tipoDeAvaliacao: 'MiniTeste', data: DateTime.now()),
  Avaliacao(disciplina: 'Fundamentos de Programacao', dificuldade: 3, tipoDeAvaliacao: 'Projeto', data: DateTime.now()),
];

class RegistoAvaliacoes extends StatefulWidget {
  @override
  _RegistoAvaliacoesState createState() => _RegistoAvaliacoesState();
}

class _RegistoAvaliacoesState extends State<RegistoAvaliacoes> {
  String _value = 'Frequência';
  final _textControler1 = TextEditingController();
  final _textControler2 = TextEditingController();
  final _textControler3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registo de Avaliacoes'),
        centerTitle: true,
        elevation: 0.0,
      ),
    body: Center(
      child: ListView(
        padding: EdgeInsets.all(20),

        children: [
           TextField(

            controller: _textControler1,
            decoration: InputDecoration(
              labelText: 'Nome da Disciplina',
              suffixIcon: IconButton(
                  onPressed: (){
                    _textControler1.clear();
                  },
                  icon: const Icon(Icons.clear))
            ),
          ),
          DropdownButton<String>(
            value: _value,
            items: <String>['Frequência', 'Defesa', 'Projeto', 'Miniteste']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _value = newValue!;
              });
            },
          ),
           TextField(
            controller: _textControler2,
            decoration: InputDecoration(
              labelText: 'Data e Hora',
            ),
          ),
           TextField(
            controller: _textControler3,
            decoration: InputDecoration(
              labelText: 'Nivel de dificuldade esperado',
            ),
          ),
           TextField(
             maxLength: 200,
            decoration: InputDecoration(
              labelText: 'Observações',
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Avaliacao avaliacao =
                Avaliacao(disciplina: _textControler1.value.toString(),
                    dificuldade: _textControler2.value as int,
                    tipoDeAvaliacao: _value,
                    data: _textControler3.value as DateTime);
                    avaliacoes.add(avaliacao);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ListaAvaliacoes()));
              },
              child: Text("Submeter"),
          )
        ],
      )
    ),
    );
  }


}
