import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  final nameController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  void initState() {
    nameController.addListener(() {
      setState(() {});
    });
    weightController.addListener(() {
      setState(() {});
    });
    heightController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 24, vertical: 80),
        child: Column(
          children: [
            Text('Insira suas informações: '),
            SizedBox(height: 20),
            _nameField(),
            SizedBox(height: 20),
            _weightField(),
            SizedBox(height: 20),
            _heightFiedl(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _nameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nome:'),
        TextField(controller: nameController),
      ],
    );
  }

  Widget _weightField() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Peso:'),
        TextField(
          controller: weightController,
          keyboardType: TextInputType.numberWithOptions(),
        ),
      ],
    );
  }

  Widget _heightFiedl() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Altura: '),
        TextField(
          controller: heightController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
      ],
    );
  }
}
