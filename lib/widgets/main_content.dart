import 'package:flutter/material.dart';
import 'tinaco_widget.dart';
import 'grafica_widget.dart';
import 'valvula_widget.dart';
import 'flujo_widget.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        children: [
          TinacoWidget(nivelAgua: 0.6),
          GraficaWidget(),
          ValvulaWidget(),
          FlujoWidget(),
        ],
      ),
    );
  }
}
