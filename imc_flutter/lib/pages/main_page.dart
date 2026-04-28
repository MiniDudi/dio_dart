import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../classes/imc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  List<String> imcList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Calculadora IMC"),
      ),
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTopHeader(context),
          SizedBox(height: 15),
          _buildDescription(context),
          SizedBox(height: 15),
          _buildInputs(context),
          SizedBox(height: 15),
          _buildMainButton(context),
          SizedBox(height: 15),
          _buildIMCList(context)
        ],
      ),
    );
  }

  Widget _buildTopHeader(BuildContext context) {
    return Center(
      child: Text(
        "Bem-vindo ao IMC calculator",
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Center(
      child: Text(
        "Digite seu peso e altura abaixo",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _buildInputs(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: "Digite seu peso"),
          controller: pesoController,
        ),
        TextField(
          decoration: InputDecoration(hintText: "Digite sua altura"),
          controller: alturaController,
        ),
      ],
    );
  }

  Widget _buildMainButton(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            if (pesoController.text.isNotEmpty &&
                alturaController.text.isNotEmpty) {
              final peso = double.parse(pesoController.text);
              final altura = double.parse(alturaController.text);

              IMC imc = IMC(peso, altura);

              String imcValue = imc.calculateIMC();

              setState(() {
                imcList.add(imcValue);
              });

              print(imcList);
            }
          },
          child: Text("Calcular IMC"),
        ),
      ),
    );
  }

  Widget _buildIMCList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: imcList.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(imcList[index]));
        },
      ),
    );
  }
}
