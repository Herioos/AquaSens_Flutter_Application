import 'package:flutter/material.dart';

class TinacoWidget extends StatelessWidget {
  final double nivelAgua;

  const TinacoWidget({super.key, required this.nivelAgua});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 300,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8)],
      ),
      child: Column(
        children: [
          const Text(
            "Tinaco",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('assets/images/tinaco_mask.png', height: 150),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: 150 * nivelAgua.clamp(0.0, 1.0),
                width: 106,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "Nivel: ${(nivelAgua * 100).toInt()}%",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
