import 'package:flutter/material.dart';

class FlujoWidget extends StatelessWidget {
  const FlujoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
      ),
      child: Column(
        children: [
          Text("Flujo de Agua", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Image.asset('assets/images/flujo.png', height: 100),
          SizedBox(height: 10),
          Text("Si", style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
