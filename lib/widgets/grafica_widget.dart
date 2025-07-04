import 'package:flutter/material.dart';

class GraficaWidget extends StatelessWidget {
  const GraficaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 200,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
      ),
      child: Column(
        children: [
          Text(
            "Nivel de agua en el tinaco",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "(Últimos 5 días)",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Image.asset('assets/images/grafica.png', height: 120),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
