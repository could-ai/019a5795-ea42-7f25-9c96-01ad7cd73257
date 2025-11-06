import 'package:flutter/material.dart';

class EffectsTab extends StatelessWidget {
  const EffectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Filter & Efek', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          // Placeholder for a grid of filters
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 9, // Placeholder count
              itemBuilder: (context, index) {
                return Card(
                  child: Center(child: Text('Filter ${index + 1}')),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const Text('Mode Kecantikan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Slider(
            value: 0.5,
            onChanged: (value) {},
            label: 'Kehalusan Kulit',
          ),
          Slider(
            value: 0.3,
            onChanged: (value) {},
            label: 'Pencerahan Wajah',
          ),
        ],
      ),
    );
  }
}
