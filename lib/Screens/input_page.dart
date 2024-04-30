import 'package:calculadora_imc_flutter/calculation.dart';
import 'package:calculadora_imc_flutter/Components/input_field.dart';
import 'package:calculadora_imc_flutter/Screens/results_page.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<StatefulWidget> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  final _nameController = TextEditingController();
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          children: [
            const Expanded(
              child: Text(
                'Insira suas informações: ',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    InputField(
                      fieldType: 'Nome:',
                      controller: _nameController,
                      inputType: TextInputType.name,
                    ),
                    InputField(
                      fieldType: 'Peso (Kg):',
                      controller: _weightController,
                      inputType: const TextInputType.numberWithOptions(),
                    ),
                    InputField(
                      fieldType: 'Altura(M):',
                      controller: _heightController,
                      inputType: const TextInputType.numberWithOptions(),
                    ),
                  ],
                )),
            ElevatedButton(
              onPressed: () {
                Calculation calc = Calculation(
                  weight: double.parse(_weightController.text),
                  height: double.parse(_heightController.text),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      name: _nameController.text,
                      imc: calc.result(),
                      classification: calc.getText(),
                      circleColor: calc.getCircleColor(),
                    ),
                  ),
                );
              },
              child: const Text('CALCULAR'),
            ),
          ],
        ),
      ),
    );
  }
}
