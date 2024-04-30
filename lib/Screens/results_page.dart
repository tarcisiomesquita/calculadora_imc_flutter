import 'package:calculadora_imc_flutter/Components/classification_circle.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.name,
      required this.imc,
      required this.classification,
      required this.circleColor});
  final String name;
  final String imc;
  final String classification;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: const Text(
                'Resultado',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.only(bottom: 100.0),
              color: Theme.of(context).colorScheme.secondary,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Olá, $name, aqui está o resultado do seu IMC:',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        classification,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ClassificationCircle(circleColor: circleColor),
                    ],
                  ),
                  Text(
                    imc,
                    style: const TextStyle(fontSize: 96),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CALCULAR NOVAMENTE')),
        ],
      ),
    );
  }
}
